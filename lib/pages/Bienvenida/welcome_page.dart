import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mybutton.dart";
import "package:titumatch/components/startingappbar.dart";

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(
          logoImagePath:
              'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png'),
      backgroundColor: Colors.orange,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 500,
              child: Image.asset('lib/images/welcometitu.png'),
            ),
            const SizedBox(
              height: 50,
            ),
            MyButton(onTap: continueOnTap, text: 'Siguiente')
          ],
        ),
      ),
    );
  }

  continueOnTap() {
    GoRouter.of(context).go('/info');
  }
}
