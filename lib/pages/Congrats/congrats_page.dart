import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mainappbar.dart";
import "package:titumatch/components/mybutton.dart";

class CongratsPage extends StatefulWidget {
  const CongratsPage({super.key});

  @override
  State<CongratsPage> createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        logoImagePath:
            'lib/images/Logo-Universidad-de-Lima-e1615406803400-300x77.png', // Ruta de tu imagen del logo
        onMessagesPressed: () {
          // Lógica cuando se presiona el icono de mensajes
        },
      ),
      backgroundColor: Colors.orange,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      10.0), // Ajusta el radio según sea necesario
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '¡Felicidades! \n ¡Terminaste el TituQuiz!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 400,
              child: Image.asset('lib/images/happytitu.png'),
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
    GoRouter.of(context).go('/home');
  }
}
