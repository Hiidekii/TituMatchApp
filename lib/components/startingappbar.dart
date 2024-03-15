import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String logoImagePath;

  const LogoAppBar({
    super.key,
    required this.logoImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0, // Sin sombra
      backgroundColor: Colors.transparent, // Fondo transparente
      leading: const SizedBox.shrink(), // Elimina el leading
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              logoImagePath,
              height: 100,
              width: 200,
            ),
          ),
        ],
      ),
      actions: const [
        SizedBox(
          width: 40, //appbar solo logo crear nuevo
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
