import "package:dots_indicator/dots_indicator.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mainappbar.dart";
import "package:titumatch/components/mybutton.dart";

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        color: Colors.orange,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              child: Image.asset('lib/images/excitedtitu.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: SizedBox(
                child: Text(
                  'Titumatch es una plataforma de orientación integral para los estudiantes universitarios que llevarán los cursos de la titulación.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  continueOnTap() {
    GoRouter.of(context).go('/quiz1');
  }
}
