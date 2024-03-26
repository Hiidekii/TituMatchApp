import 'package:flutter/material.dart';
import 'package:titumatch/components/secondaryappbar.dart';
import 'package:titumatch/utils/colors.dart';

class DetailsScreen extends StatelessWidget {
  final String name;
  final String image;
  final String about;
  final Map<int, String> intereses;
  final String path;

  const DetailsScreen({
    Key? key,
    required this.path,
    required this.name,
    required this.image,
    required this.about,
    required this.intereses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ulimaOrange,
      appBar: SecondaryAppBar(
        logoImagePath:
            'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png',
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      body: Container(
        color: ulimaOrange, // Establece el color de fondo como blanco
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 30,
                    color: textWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Sobre mi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textWhite,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Text(
                about,
                style: const TextStyle(color: textWhite),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Intereses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textWhite,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: intereses.length,
                  itemBuilder: (BuildContext context, int index) {
                    String word = intereses.values.elementAt(index);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: textWhite),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              word,
                              style: const TextStyle(color: textWhite),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              getIcon(word),
                              color: textWhite,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Portafolio',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textWhite,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData getIcon(String word) {
    switch (word.toLowerCase()) {
      case 'fotografía':
        return Icons.camera_alt;
      case 'arte':
        return Icons.brush;
      case 'viajar':
        return Icons.place_rounded;
      // Agrega más casos según tus necesidades
      default:
        return Icons.error;
    }
  }
}
