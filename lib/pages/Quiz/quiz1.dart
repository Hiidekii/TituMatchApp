import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mybutton.dart";
import "package:titumatch/components/startingappbar.dart";

class Quiz1Page extends StatefulWidget {
  const Quiz1Page({super.key});

  @override
  State<Quiz1Page> createState() => _Quiz1PageState();
}

class _Quiz1PageState extends State<Quiz1Page> {
  final List myTiles = [
    'En una ONG que apoya casos de violencia hacia la mujer.',
    'En el área de capacitación y desarrollo de personal en una empresa privada.',
    'En el área de responsabilidad social-ambiental de una empresa privada.',
    'En una ONG que brinda servicios psicológicos a migrantes.',
    'En el área de gestión del talento de una empresa privada.'
  ];

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      //se ajusta cuando se mueve tile hacia abajo
      if (oldIndex < newIndex) {
        newIndex--;
      }

      // get the tile we are moving
      final tile = myTiles.removeAt(oldIndex);

      //place the tile in the new position
      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: const LogoAppBar(
          logoImagePath:
              'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png'),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Color de fondo naranja
            borderRadius:
                BorderRadius.circular(15), // Radio de borde redondeado
          ),
          child: SizedBox(
            height: 1000,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '¿En qué institución preferiría realizar prácticas pre-universitarias?',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Ordene las alternativas en órden de interés:',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height:
                            290, // Para que la imagen ocupe toda la altura de la lista
                        child: Image.asset(
                            'lib/images/leyenda.png'), // Ruta de tu imagen
                      ),
                      const SizedBox(
                          width: 5), // Espacio entre la imagen y la lista
                      Expanded(
                        child: ReorderableListView(
                          shrinkWrap: true,
                          children: [
                            for (final tile in myTiles)
                              Card(
                                key: ValueKey(tile),
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: SizedBox(
                                  height: 50, // Altura definida de la tarjeta
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          // Permite que el texto crezca verticalmente
                                          child: Text(
                                            tile,
                                            style: const TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                          ],
                          onReorder: (oldIndex, newIndex) =>
                              updateMyTiles(oldIndex, newIndex),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 20,
                        child: LinearProgressIndicator(
                          value: 1 / 3, // Valor de la barra de progreso
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('1/3')
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(onTap: onTapNext, text: 'Siguiente')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapNext() {
    GoRouter.of(context).go('/quiz2');
  }
}
