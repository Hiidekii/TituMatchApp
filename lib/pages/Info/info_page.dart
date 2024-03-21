import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:titumatch/components/startingappbar.dart';
import 'package:titumatch/pages/Info/info_widget.dart';
import 'package:titumatch/utils/colors.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final PageController _pageController = PageController();

  void onNextPage() {
    if (_activePage < _pages.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 200), curve: Curves.linear);
    } else {
      GoRouter.of(context).go('/experience');
    }
  }

  int _activePage = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'image': 'lib/images/excitedtitu.png',
      'description':
          "Titumatch es una plataforma de orientación integral para los estudiantes universitarios que llevarán los cursos de titulación.",
    },
    {
      'image': 'lib/images/titudoubt.png',
      'description':
          'Encontrarás diferentes herramientas para aprobar el curso, incluyendo la elección de tu tema, compañero y asesor.',
    },
    {
      'image': 'lib/images/dabtitu.png',
      'description':
          'Nuestro objetivo es que logres un proceso de titulación exitoso.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(
          logoImagePath:
              'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png'),
      backgroundColor: ulimaOrange,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return InfoWidget(
                description: _pages[index]['description'],
                image: _pages[index]['image'],
                onTab: onNextPage,
              );
            },
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.45,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildIndicator(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildIndicator() {
    final indicators = <Widget>[];
    for (var i = 0; i < _pages.length; i++) {
      if (_activePage == i) {
        indicators.add(_indicatorsTrue());
      } else {
        indicators.add(_indicatorsFalse());
      }
    }
    return indicators;
  }

  Widget _indicatorsTrue() {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 40,
      width: 84,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: ulimaOrange,
      ),
    );
  }

  Widget _indicatorsFalse() {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: backgroundGrey,
      ),
    );
  }
}
