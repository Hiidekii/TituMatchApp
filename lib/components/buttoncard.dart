import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget buildCard(BuildContext context, IconData icon, String title,
    Color colorCard, Color colorText, String ruta) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Card(
      color: colorCard, // Establecer el color de fondo del Card
      child: InkWell(
        onTap: () {
          context.push(ruta);
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 48,
                  color: colorText, // Establecer el color del icono
                ),
                const SizedBox(
                    height: 20), // Espacio entre el icono y el título
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colorText, // Establecer el color del texto
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
