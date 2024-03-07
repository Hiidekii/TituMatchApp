import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key, // Corregido: 'super.key' a 'Key? key'
    required this.selectedIndex,
    required this.onItemTapped,
  }); // Corregido: super.key

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //currentIndex: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_copy),
          label: 'Recursos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.white, // Iconos blancos
      backgroundColor: Colors.black, // Fondo negro
      onTap: onItemTapped,
    );
  }
}
