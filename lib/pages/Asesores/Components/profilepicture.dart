import "package:flutter/material.dart";

Widget ProfilePicture(BuildContext context, String person) {
  return Padding(
    padding: const EdgeInsets.only(right: 10, left: 10),
    child: GestureDetector(
      onTap: () {
        // Aquí puedes definir la lógica que deseas cuando se hace clic en la imagen
      },
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
              15), // Ajusta el radio de acuerdo a tus preferencias
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(person),
          ),
        ),
      ),
    ),
  );
}
