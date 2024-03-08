import "package:flutter/material.dart";
import "package:titumatch/pages/Alumnos/Components/profilepictureal.dart";

Widget allAlumnos(BuildContext context) {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: const Text(
          "¡Tus Compañeros idales!",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: const Text(
          "Más",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
            profilePictureAl(context, 'lib/images/alumnoplaceholder.jpg'),
          ],
        ),
      ),
    ],
  );
}
