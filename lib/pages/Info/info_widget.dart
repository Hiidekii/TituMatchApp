import 'package:flutter/material.dart';
import 'package:titumatch/utils/colors.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.description,
    required this.image,
    required this.onTab,
  });

  final String description;
  final String image;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ulimaOrange,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2.16,
              decoration: const BoxDecoration(
                  color: backgroundWhite,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 18,
                        height: 1.5,
                        color: textBlack,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  height: 46,
                  child: MaterialButton(
                    color: ulimaOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: onTab,
                    child: const Text(
                      'Siguiente',
                      style: TextStyle(color: textWhite),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
