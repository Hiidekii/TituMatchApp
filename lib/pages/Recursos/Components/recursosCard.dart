import 'package:flutter/material.dart';

Widget recursosCard(BuildContext context, String title) {
  return Card(
    color: Colors.white, // Fondo blanco
    shape: RoundedRectangleBorder(
      // Borde gris
      side: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.favorite), // Icono de corazón
              Icon(Icons.arrow_forward), // Icono de flecha
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orange, // Título en color naranja
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Fecha: 06 de Marzo de 2024",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Modalidad: Virtual",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );
}
