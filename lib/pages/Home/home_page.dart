import 'package:flutter/material.dart';
import 'package:titumatch/components/buttoncard.dart';
import 'package:titumatch/components/mainappbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        logoImagePath:
            'lib/images/logo_ulima.png', // Ruta de tu imagen del logo
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
                'Home',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: buildCard(context, Icons.book, 'Resultados',
                          Colors.orange, Colors.white, '/resultados')),
                  Expanded(
                      child: buildCard(context, Icons.person, 'Asesores',
                          Colors.orange, Colors.white, '/asesores')),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: buildCard(context, Icons.school, 'Temas',
                          Colors.orange, Colors.white, '/temas')),
                  Expanded(
                      child: buildCard(context, Icons.people, 'Alumnos',
                          Colors.orange, Colors.white, '/alumnos')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
