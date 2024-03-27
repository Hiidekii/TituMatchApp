import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

Widget profilePictureAl(BuildContext context, Map<String, dynamic> partner) {
  return Padding(
    padding: const EdgeInsets.only(right: 10, left: 10),
    child: GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/detailsPartner/${partner['path']}', extra: {
          'image': partner['image'],
          'name': partner['name'],
          'about': partner['about'],
          'intereses': partner['intereses'],
          'path': partner['path'],
        });
      },
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
              15), // Ajusta el radio de acuerdo a tus preferencias
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(partner['image']),
          ),
        ),
      ),
    ),
  );
}
