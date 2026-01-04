import 'package:flutter/material.dart';

class TitleInicioComponent extends StatelessWidget {
  final String titulo;
  const TitleInicioComponent({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        const Divider(
          color: Colors.greenAccent,
          thickness: 2,
          indent: 150,
          endIndent: 150,
        ),
        const SizedBox(height: 10),

        //*~~~~~TÍTULO DE VIEW~~~~~.
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
            color: Colors.limeAccent,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),
      ],
    );
  }
}
