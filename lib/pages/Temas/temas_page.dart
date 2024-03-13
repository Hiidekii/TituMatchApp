import 'package:flutter/material.dart';
import 'package:titumatch/components/secondaryappbar.dart';
import 'package:titumatch/pages/Temas/Components/temas_card.dart';

class TemasPage extends StatefulWidget {
  const TemasPage({Key? key});

  @override
  State<TemasPage> createState() => _TemasPageState();
}

class _TemasPageState extends State<TemasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SecondaryCustomAppBar(
        logoImagePath: 'lib/images/logo_ulima.png',
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: const Text(
                'Temas de Investigación',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10),
              child: const Text(
                'Top 5',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const TemasCards(), // Widget de las cards
            Container(
              margin: const EdgeInsets.only(left: 15, bottom: 10, top: 15),
              child: const Text(
                'Posibles temas de investigación',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                onPressed: () {
                  // Lógica cuando se presiona el botón "Explorar"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Color naranja
                ),
                child: const Text(
                  'Explorar',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TemasCards extends StatelessWidget {
  const TemasCards({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TemaCard(
            title: 'Impacto de las redes sociales en el periodismo deportivo.'),
        TemaCard(
            title:
                'Impacto de la Inteligencia Artificial (IA) en el Marketing Digital.'),
        TemaCard(
            title:
                'El Papel de la Fotografía Callejera en Movimientos Sociales.'),
        TemaCard(
            title:
                'La manipulación de los medios de comunicación y la responsabilidad ética.'),
        TemaCard(
            title:
                'Los periódicos digitales y los sitios web ante la aplicación de los SEO.'),
      ],
    );
  }
}
