import 'package:flutter/material.dart';
import 'package:titumatch/components/mybutton.dart';
import 'package:titumatch/components/startingappbar.dart';
import 'package:titumatch/utils/colors.dart';

class QuizWidget extends StatefulWidget {
  const QuizWidget({
    super.key,
    required this.title,
    required this.opciones,
    required this.onTab,
    required this.page,
  });

  final String title;
  final Map<int, String> opciones;
  final VoidCallback onTab;
  final int page;

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  List<String> opcionesValues = [];
  int count = 0;

  @override
  void initState() {
    super.initState();
    opcionesValues = widget.opciones.values.toList();
    count = widget.page + 1;
  }

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      //se ajusta cuando se mueve tile hacia abajo
      if (oldIndex < newIndex) {
        newIndex--;
      }

      // get the tile we are moving
      final tile = opcionesValues.removeAt(oldIndex);

      //place the tile in the new position
      opcionesValues.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ulimaOrange,
      appBar: const LogoAppBar(
          logoImagePath:
              'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png'),
      body: ColoredBox(
        color: ulimaOrange,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              bottom: 20,
              right: 30,
              left: 30,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.16,
                decoration: BoxDecoration(
                    color: backgroundWhite,
                    borderRadius: BorderRadius.circular(60)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Ordene las alternativas en orden de interés:',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.5,
                          color: textGrey,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
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
                                for (final tile in opcionesValues)
                                  Card(
                                    key: ValueKey(tile),
                                    color: backgroundGrey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: SizedBox(
                                      height:
                                          50, // Altura definida de la tarjeta
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            height: 20,
                            child: LinearProgressIndicator(
                              value: (widget.page + 1) /
                                  3, // Valor de la barra de progreso
                              color: ulimaOrange,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('${widget.page + 1} / 3')
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      MyButton(onTap: widget.onTab, text: 'Siguiente')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
