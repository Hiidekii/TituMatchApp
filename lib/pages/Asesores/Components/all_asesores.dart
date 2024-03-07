import "package:flutter/material.dart";
import "package:titumatch/pages/Asesores/Components/profilepicture.dart";

Widget AllAsesores(BuildContext context) {
  return Column(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: const Text(
          "¡Tus asesores idales!",
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
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
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
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
            ProfilePicture(context, 'lib/images/albertomatsu.jpg'),
          ],
        ),
      ),
    ],
  );
}
