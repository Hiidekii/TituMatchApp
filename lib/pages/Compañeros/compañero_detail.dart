import "package:flutter/material.dart";
import "package:titumatch/components/secondaryappbar.dart";

class DetailsScreen extends StatelessWidget {
  final String name;
  final String image;
  final String about;
  final Map<int, String> intereses;
  final String path;

  const DetailsScreen(
      {super.key,
      required this.path,
      required this.name,
      required this.image,
      required this.about,
      required this.intereses});

  @override
  Widget build(BuildContext context) {
    // Aquí puedes utilizar 'path' para mostrar los detalles del elemento seleccionado
    // por ejemplo, puedes buscar los detalles en una lista según 'path' y mostrarlos
    return Scaffold(
      appBar: SecondaryAppBar(
        logoImagePath: 'lib/images/logo_ulima.png',
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name),
            Image.asset(image),
            Text(about),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: intereses.length,
                itemBuilder: (BuildContext context, int index) {
                  String word = intereses.values.elementAt(index);
                  return Text(word + ' ');
                },
              ),
            ),
            Text(path),
            ElevatedButton(
              onPressed: () {
                print(intereses);
              },
              child: Text('hola'),
            )
          ],
        ),
      ),
    );
  }
}
