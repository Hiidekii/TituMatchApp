import 'package:flutter/material.dart';
import 'package:titumatch/components/buttoncard.dart';
import 'package:titumatch/components/mainappbar.dart';
import 'package:titumatch/utils/colors.dart';

class RecursosPage extends StatefulWidget {
  const RecursosPage({super.key});

  @override
  RecursosPageState createState() => RecursosPageState();
}

class RecursosPageState extends State<RecursosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ulimaOrange, // Establecer el color de fondo como naranja
      appBar: MainAppBar(
        logoImagePath:
            'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png', // Ruta de tu imagen del logo
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Container(
        margin: const EdgeInsets.all(16), // Añadir margen a todos los lados
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: const Text(
                'Recursos',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: textWhite,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: buildCard(context, Icons.book, 'Biblioteca',
                          backgroundWhite, ulimaOrange, '/biblioteca')),
                  Expanded(
                      child: buildCard(context, Icons.person, 'Talleres',
                          backgroundWhite, ulimaOrange, '/talleres')),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: buildCard(context, Icons.school, 'Tesis Pasadas',
                          backgroundWhite, ulimaOrange, '/tesispasadas')),
                  Expanded(
                      child: buildCard(context, Icons.people, 'Eventos',
                          backgroundWhite, ulimaOrange, '/eventos')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
