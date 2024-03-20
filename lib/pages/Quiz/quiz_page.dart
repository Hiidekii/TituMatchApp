import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:titumatch/pages/Quiz/quiz_widget.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final PageController _pageController = PageController();

  void onNextPage() {
    if (_activePage < _pages.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
    } else {
      GoRouter.of(context).go('/congrats');
    }
  }

  int _activePage = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'title':
          '¿En qué institución preferiría realizar prácticas pre-profesionales?',
      'opciones': {
        1: 'En el área de capacitación y desarrollo de personal en una empresa privada.',
        2: 'En una ONG que brinda servicios psicológicos a migrantes.',
        3: 'En el área de responsabilidad social-ambiental de una empresa privada.',
        4: 'En una ONG que apoya casos de violencia hacia la mujer.',
        5: 'En el área de gestión del talento de empresa privada.'
      }
    },
    {
      'title':
          'A lo largo de su formación, ¿qué actividad de clase le gustó más?',
      'opciones': {
        1: 'Realizar un diagnóstico clínico',
        2: 'Realizar una evaluación psicopedagógica.',
        3: 'Diseñar estrategias de gestión del talento para empresas.',
        4: 'Estudiar sobre el comportamiento organizacional.',
        5: 'Aplicar pruebas psicológicas.'
      }
    },
    {
      'title':
          'Si le dieran a escoger un tema para exponer, ¿cuál de los siguientes temas escogería?',
      'opciones': {
        1: 'El perfil psicológico de presidiarios en el Perú.',
        2: 'La importancia del liderazgo para el logro de objetivos en las empresas.',
        3: 'La importancia de la diversidad cultural de los colaboradores en el clima de las empresas.',
        4: 'La importancia de la responsabilidad ambiental por parte de las empresas.',
        5: 'La importancia de la confiabilidad y validez al utilizar pruebas psicológicas.'
      }
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              return QuizWidget(
                title: _pages[index]['title'],
                opciones: _pages[index]['opciones'],
                onTab: onNextPage,
                page: _activePage,
              );
            },
          ),
        ],
      ),
    );
  }
}
