import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:titumatch/components/mybutton.dart";
import "package:titumatch/components/startingappbar.dart";
import "package:titumatch/pages/Info/Path/page1.dart";
import "package:titumatch/pages/Info/Path/page2.dart";
import "package:titumatch/pages/Info/Path/page3.dart";
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  PageController controller = PageController(initialPage: 0);
  int pageChanged = 0;

  final List<Widget> pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LogoAppBar(logoImagePath: 'lib/images/logo_ulima.png'),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  pageChanged = index;
                });
              },
              children: pages,
            ),
          ),
          SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const JumpingDotEffect(
              activeDotColor: Colors.orange,
              dotColor: Colors.grey,
              dotHeight: 30,
              dotWidth: 30,
              spacing: 20,
            ),
          ),
          MyButton(
              onTap: () {
                if (pageChanged != pages.length) {
                  controller.animateToPage(pageChanged++,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.bounceInOut);
                } else {
                  GoRouter.of(context).go('/experience');
                }
              },
              text: 'Siguiente')
        ],
      ),
    );
  }
}

// class InfoPage extends StatelessWidget {
//   final _controller = PageController();

//   final List<Widget> pages = [
//     Page1(),
//     Page2(),
//     Page3(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(
//         logoImagePath:
//             'lib/images/logo_ulima.png', // Ruta de tu imagen del logo
//         onMessagesPressed: () {
//           // Lógica cuando se presiona el icono de mensajes
//         },
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           SizedBox(
//             height: 500,
//             child: PageView(
//               controller: _controller,
//               children: pages,
//             ),
//           ),
//           SmoothPageIndicator(
//             controller: _controller,
//             count: 3,
//             effect: const JumpingDotEffect(
//               activeDotColor: Colors.orange,
//               dotColor: Colors.grey,
//               dotHeight: 30,
//               dotWidth: 30,
//               spacing: 20,
//             ),
//           ),
//           MyButton(onTap: onTapNext, text: 'siguiente')
//         ],
//       ),
//     );
//   }

//   onTapNext() {}
// }
