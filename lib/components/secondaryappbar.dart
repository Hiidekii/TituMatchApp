import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondaryCustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String logoImagePath;
  final VoidCallback onMessagesPressed;

  const SecondaryCustomAppBar({
    super.key,
    required this.logoImagePath,
    required this.onMessagesPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0, // Sin sombra
      backgroundColor: Colors.transparent, // Fondo transparente
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
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
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            icon: const Icon(Icons.message),
            onPressed: onMessagesPressed,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
