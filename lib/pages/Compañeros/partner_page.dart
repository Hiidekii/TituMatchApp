import "package:flutter/material.dart";
import "package:titumatch/components/secondaryappbar.dart";
import "package:titumatch/pages/Compa%C3%B1eros/Components/saved_alumnos.dart";
import "package:titumatch/pages/Compa%C3%B1eros/partner_widget.dart";
import "package:titumatch/utils/colors.dart";

class CompanheroPage extends StatefulWidget {
  const CompanheroPage({super.key});

  @override
  State<CompanheroPage> createState() => _CompanheroPageState();
}

class _CompanheroPageState extends State<CompanheroPage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _people = [
    {
      'ideal': [
        {
          'image': 'lib/images/alumnoplaceholder.jpg',
          'name': 'Omar Valdivia',
          'about':
              'Estudiante del octavo ciclo de la carrera de Comunicación de la Universidad de Lima, con un fuerte interés en el área de audiovisuales.',
          'intereses': {1: 'Fotografía', 2: 'Arte', 3: 'Viajar'},
          'path': 'omarvaldivia'
        },
        {
          'image': 'lib/images/alumnoplaceholder.jpg',
          'name': 'Pedro Sanchez',
          'about':
              'Estudiante del octavo ciclo de la carrera de Comunicación de la Universidad de Lima, con un fuerte interés en el área de audiovisuales.',
          'intereses': {1: 'Fotografía', 2: 'Arte', 3: 'Viajar'},
          'path': 'pedrosanchez'
        },
        {
          'image': 'lib/images/alumnoplaceholder.jpg',
          'name': 'Juan Abad',
          'about':
              'Estudiante del octavo ciclo de la carrera de Comunicación de la Universidad de Lima, con un fuerte interés en el área de audiovisuales.',
          'intereses': {1: 'Fotografía', 2: 'Arte', 3: 'Viajar'},
          'path': 'juanabad'
        }
      ],
      'more': [
        {
          'image': 'lib/images/alumnoplaceholder.jpg',
          'name': 'Omar Valdivia',
          'about':
              'Estudiante del octavo ciclo de la carrera de Comunicación de la Universidad de Lima, con un fuerte interés en el área de audiovisuales.',
          'intereses': {1: 'Fotografía', 2: 'Arte', 3: 'Viajar'},
          'path': 'sebastiangomez'
        },
        {
          'image': 'lib/images/alumnoplaceholder.jpg',
          'name': 'Omar Valdivia',
          'about':
              'Estudiante del octavo ciclo de la carrera de Comunicación de la Universidad de Lima, con un fuerte interés en el área de audiovisuales.',
          'intereses': {1: 'Fotografía', 2: 'Arte', 3: 'Viajar'},
          'path': 'pablojuarez'
        },
        {
          'image': 'lib/images/alumnoplaceholder.jpg',
          'name': 'Omar Valdivia',
          'about':
              'Estudiante del octavo ciclo de la carrera de Comunicación de la Universidad de Lima, con un fuerte interés en el área de audiovisuales.',
          'intereses': {1: 'Fotografía', 2: 'Arte', 3: 'Viajar'},
          'path': 'kohjisaitama'
        }
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
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
                      style: TextStyle(color: textWhite),
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
            _selectedIndex == 0
                ? CompanheroWidget(
                    listaIdeal: _people[0]['ideal'],
                    listaMore: _people[0]['more'],
                  )
                : savedAlumnos(context)
          ],
        ),
      ),
    );
  }
}
