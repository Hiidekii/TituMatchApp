import "package:flutter/material.dart";
import "package:titumatch/components/secondaryappbar.dart";
import "package:titumatch/pages/Alumnos/Components/all_alumnos.dart";
import "package:titumatch/pages/Alumnos/Components/saved_alumnos.dart";

class AlumnosPage extends StatefulWidget {
  const AlumnosPage({super.key});

  @override
  State<AlumnosPage> createState() => _AlumnosPageState();
}

class _AlumnosPageState extends State<AlumnosPage> {
  int _selectedIndex = 0;

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
                'Home',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
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
                            return Colors
                                .orange; // Cambiar el color si está presionado
                          }
                          return _selectedIndex == 0
                              ? Colors.orange
                              : Colors
                                  .grey; // Cambiar el color si está seleccionado
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
                        color: Colors.white,
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
                            return Colors
                                .orange; // Cambiar el color si está presionado
                          }
                          return _selectedIndex == 1
                              ? Colors.orange
                              : Colors
                                  .grey; // Cambiar el color si está seleccionado
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
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _selectedIndex == 0
                ? //Expanded(
                //     child: GridView.builder(
                //       gridDelegate:
                //           const SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         crossAxisSpacing: 10,
                //         mainAxisSpacing: 10,
                //       ),
                //       itemCount: 4, // Cambia esto según tus necesidades
                //       itemBuilder: (context, index) {
                //         // Reemplaza esta parte con tus imágenes
                //         return Image.asset(
                //             'lib/images/depositphotos_137014128-stock-illustration-user-profile-icon.jpg');
                //       },
                //     ),
                //   )
                allAlumnos(context)
                : //Expanded(
                //     child: GridView(
                //       gridDelegate:
                //           const SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         crossAxisSpacing: 10,
                //         mainAxisSpacing: 10,
                //       ),
                //       itemCount: 4, // Cambia esto según tus necesidades
                //       itemBuilder: (context, index) {
                //         // Reemplaza esta parte con tus tarjetas
                //         return Card(
                //           child: Column(
                //             children: [
                //               Image.asset(
                //                 'lib/images/depositphotos_137014128-stock-illustration-user-profile-icon.jpg',
                //                 width:
                //                     100, // ajusta el tamaño de la imagen según tus necesidades
                //                 height: 100,
                //                 fit: BoxFit.cover,
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.all(8.0),
                //                 child: Text(
                //                   'Descripción del item $index',
                //                   textAlign: TextAlign.center,
                //                 ),
                //               ),
                //             ],
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                savedAlumnos(context)
          ],
        ),
      ),
    );
  }
}
