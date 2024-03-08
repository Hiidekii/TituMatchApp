import 'package:flutter/material.dart';
import 'package:titumatch/components/secondaryappbar.dart';

class ResultadosPage extends StatefulWidget {
  const ResultadosPage({super.key});

  @override
  State<ResultadosPage> createState() => _ResultadosPageState();
}

class _ResultadosPageState extends State<ResultadosPage> {
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
                'Resultados',
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
                'Línea de investigación: Resultado',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 15, // Número de elementos en la lista
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Título del elemento $index'),
                    visualDensity: const VisualDensity(vertical: -4),
                    trailing: SizedBox(
                      width: 100,
                      height: 10,
                      child: LinearProgressIndicator(
                        value: (index + 1) / 5, // Valor de la barra de progreso
                        color: Colors.orange,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
