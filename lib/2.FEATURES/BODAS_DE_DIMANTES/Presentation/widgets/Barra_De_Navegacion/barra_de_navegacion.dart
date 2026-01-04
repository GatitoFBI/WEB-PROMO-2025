import 'package:flutter/material.dart';

import 'components/navigator_item_component.dart';
import 'components/search_box_component.dart';

class BarraDeNavegacion extends StatelessWidget {
  final String rutaActual;

  const BarraDeNavegacion({super.key, required this.rutaActual});

  final logoUrl = "assets/images/TCYR.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Image.asset(logoUrl, width: 40),
          const SizedBox(width: 12),
          const Text(
            'I.E. Tito Cusy Yupanqui',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Spacer(),
          NavItem(text: 'Inicio', isActivo: rutaActual == 'Inicio'),
          NavItem(text: 'Alumnos', isActivo: rutaActual == 'Alumnos'),
          NavItem(text: 'Galeria', isActivo: rutaActual == 'Galeria'),
          NavItem(text: 'Colaboradores', isActivo: rutaActual == 'Colaboradores'),
          const Spacer(),
          const SearchBoxButton(),
        ],
      ),
    );
  }
}
