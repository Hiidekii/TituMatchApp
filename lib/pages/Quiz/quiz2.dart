import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mainappbar.dart";
import "package:titumatch/components/mybutton.dart";

class Quiz2Page extends StatefulWidget {
  const Quiz2Page({super.key});

  @override
  State<Quiz2Page> createState() => _Quiz1PageState();
}

class _Quiz1PageState extends State<Quiz2Page> {
  final List myTiles = [
    'Realizar un diagnóstico clínico.',
    'Realizar una evaluación psicopedagógica.',
    'Diseñar estrategias de gestión del talento para empresas.',
    'Estudiar sobre el comportamientos organizacional.',
    'Aplicar pruebas psicológicas.'
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
      appBar: CustomAppBar(
        logoImagePath:
            'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png', // Ruta de tu imagen del logo
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Container(
        child: Padding(
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
                                    borderRadius: BorderRadius.circular(
                                        0), // Establece el radio de borde en cero para hacer la tarjeta cuadrada
                                  ),
                                  child: SizedBox(
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                            8.0), // Puedes ajustar los márgenes según sea necesario
                                        child: Text(
                                          tile,
                                          style: const TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
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
                            value: 2 / 3, // Valor de la barra de progreso
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('2/3')
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
      ),
    );
  }

  onTapNext() {
    GoRouter.of(context).go('/quiz3');
  }
}
