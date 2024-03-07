import 'package:flutter/material.dart';

class TemaCard extends StatelessWidget {
  final String title;

  const TemaCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Card(
        color: Colors.orange, // Color de fondo naranja
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up_outlined),
                onPressed: () {
                  // Lógica del botón de like
                },
              ),
              IconButton(
                icon: const Icon(Icons.thumb_down_outlined),
                onPressed: () {
                  // Lógica del botón de dislike
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
