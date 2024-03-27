import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:titumatch/pages/Compa%C3%B1eros/Components/pp_partner.dart';
import 'package:titumatch/utils/colors.dart';

class AsesorWidget extends StatefulWidget {
  const AsesorWidget(
      {super.key, required this.listaIdeal, required this.listaMore});

  final List<Map<String, dynamic>> listaIdeal;
  final List<Map<String, dynamic>> listaMore;

  @override
  State<AsesorWidget> createState() => _AsesorWidgetState();
}

class _AsesorWidgetState extends State<AsesorWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "¡Tus Compañeros idales!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ulimaOrange,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.listaIdeal.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> partnerIdeal = widget.listaIdeal[index];
              return profilePictureAl(context, partnerIdeal);
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Más",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ulimaOrange,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.listaMore.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> partnerMore = widget.listaMore[index];
              return profilePictureAl(context, partnerMore);
            },
          ),
        ),
      ],
    );
  }
}
