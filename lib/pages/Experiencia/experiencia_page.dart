import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mybutton.dart";
import "package:titumatch/components/startingappbar.dart";
import "package:titumatch/utils/colors.dart";

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(
          logoImagePath:
              'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png'),
      backgroundColor: ulimaOrange,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                decoration: BoxDecoration(
                  color: backgroundWhite,
                  borderRadius: BorderRadius.circular(
                      10.0), // Ajusta el radio según sea necesario
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Queremos darte una experiencia que se adapte a ti, así que responde el siguiente Quizz honestamente. Tómate tu tiempo de ser necesario.',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: Image.asset('lib/images/winktitu.png'),
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(onTap: continueOnTap, text: 'Siguiente')
          ],
        ),
      ),
    );
  }

  continueOnTap() {
    GoRouter.of(context).go('/quiz');
  }
}
