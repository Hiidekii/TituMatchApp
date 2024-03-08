import "package:flutter/material.dart";
import "package:titumatch/components/mainappbar.dart";

class Quiz1Page extends StatefulWidget {
  const Quiz1Page({super.key});

  @override
  State<Quiz1Page> createState() => _Quiz1PageState();
}

class _Quiz1PageState extends State<Quiz1Page> {
  final List myTiles = [
    'A',
    'B',
    'C',
    'D',
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
      appBar: CustomAppBar(
        logoImagePath:
            'lib/images/logo_ulima.png', // Ruta de tu imagen del logo
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50, top: 40),
        child: ReorderableListView(
          children: [
            for (final tile in myTiles)
              Card(
                key: ValueKey(tile),
                color: Colors.grey,
                child: SizedBox(
                  height: 40,
                  child: Center(
                    child: Text(tile),
                  ),
                ),
              )
          ],
          onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex, newIndex),
        ),
      ),
    );
  }
}
