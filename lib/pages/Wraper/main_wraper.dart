import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;
  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int selectedIndex = 0;

  void _goToBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: widget.navigationShell),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          _goToBranch(selectedIndex);
        },
        iconSize: 30,
        activeColor: Colors.white,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            title: "Home",
            icon: Icons.home,
          ),
          BarItem(
            title: "Recursos",
            icon: Icons.file_copy,
          ),
          BarItem(
            title: "Profile",
            icon: Icons.people,
          ),
        ],
      ),
    );
  }
}
