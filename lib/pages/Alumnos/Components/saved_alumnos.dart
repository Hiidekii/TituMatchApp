import 'package:flutter/material.dart';

Widget savedAlumnos(BuildContext context) {
  return Expanded(
    child: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 4, // Cambia esto según tus necesidades
      itemBuilder: (context, index) {
        // Reemplaza esta parte con tus tarjetas
        return Card(
          child: Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio:
                      2, // Puedes ajustar este valor según tus necesidades
                  child: Image.asset(
                    'lib/images/alumnoplaceholder.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height:
                    40, // ajusta la altura adicional de la tarjeta según tus necesidades
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Descripción del item $index',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
