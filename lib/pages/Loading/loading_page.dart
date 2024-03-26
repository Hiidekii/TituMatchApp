import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:titumatch/utils/colors.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  LoadingPageState createState() => LoadingPageState();
}

class LoadingPageState extends State<LoadingPage> {
  double percentage = 0.0; // Variable para almacenar el porcentaje

  @override
  void initState() {
    super.initState();
    // Ejemplo de simulación de carga
    simulateLoading();
  }

  // Método para simular carga y actualizar el porcentaje
  void simulateLoading() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        percentage = 20.0; // Simulación del 20% completado
      });
    });
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        percentage = 60.0; // Simulación del 60% completado
      });
    });
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        percentage = 80.0; // Simulación del 80% completado
      });
    });
    Future.delayed(const Duration(milliseconds: 4500), () {
      setState(() {
        percentage = 100.0; // Simulación del 100% completado
      });
    });
    Future.delayed(const Duration(milliseconds: 5000), () {
      if (percentage == 100.0) {
        GoRouter.of(context).go('/home');
        GoRouter.of(context).push('/resultados');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ulimaOrange,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              CircularPercentIndicator(
                animation: true,
                animationDuration: 5000,
                radius: 100,
                lineWidth: 20,
                percent: 1, // Usamos la variable percentage
                progressColor: backgroundWhite,
                backgroundColor: backgroundGrey,
                circularStrokeCap: CircularStrokeCap.round,
                center: Text(
                  '${percentage.toInt()}%', // Mostramos el porcentaje actual
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: textWhite,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Cargando resultados...',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: textWhite,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/dabtitu.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
