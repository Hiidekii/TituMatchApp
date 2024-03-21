import 'package:flutter/material.dart';
import 'package:titumatch/components/secondaryappbar.dart';
import 'package:titumatch/pages/Recursos/Components/recursos_card.dart';
import 'package:titumatch/utils/colors.dart';

class EventosPage extends StatefulWidget {
  const EventosPage({super.key});

  @override
  State<EventosPage> createState() => _EventosPageState();
}

class _EventosPageState extends State<EventosPage> {
  int _selectedIndex = 0; // Índice del botón seleccionado

  @override
  Widget build(BuildContext context) {
    //String displayText = _selectedIndex == 0 ? 'Hola' : 'Adios';

    return Scaffold(
      appBar: SecondaryAppBar(
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
                'Home',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ulimaOrange,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex =
                            0; // Establecer el primer botón como seleccionado
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return ulimaOrange; // Cambiar el color si está presionado
                          }
                          return _selectedIndex == 0
                              ? ulimaOrange
                              : backgroundGrey; // Cambiar el color si está seleccionado
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Todos',
                      style: TextStyle(
                        color: textWhite,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex =
                            1; // Establecer el segundo botón como seleccionado
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return ulimaOrange; // Cambiar el color si está presionado
                          }
                          return _selectedIndex == 1
                              ? ulimaOrange
                              : backgroundGrey; // Cambiar el color si está seleccionado
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Guardados',
                      style: TextStyle(
                        color: textWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  recursosCard(context, "V encuentro de emprendedores"),
                  recursosCard(context, "Una mañana con redondos"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
