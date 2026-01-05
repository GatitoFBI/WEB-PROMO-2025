import 'package:flutter/material.dart';

import 'components/navigator_item_component.dart';
import 'components/search_box_component.dart';

class BarraDeNavegacion extends StatelessWidget {
  final String rutaActual;

  const BarraDeNavegacion({super.key, required this.rutaActual});

  final logoUrl = "assets/images/TCYR.png";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 900;

        return Container(
          color: Colors.grey[900],
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: isMobile ? _mobileBar(context) : _desktopBar(),
        );
      },
    );
  }

  /// 🖥️ WEB / PC
  Widget _desktopBar() {
    return Row(
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
    );
  }

  /// 📱 MÓVIL
  Widget _mobileBar(BuildContext context) {
    return Row(
      children: [
        Image.asset(logoUrl, width: 36),
        const SizedBox(width: 8),
        const Expanded(
          child: Text(
            'I.E. Tito Cusy Yupanqui',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () => _openMenu(context),
        ),
      ],
    );
  }

  void _openMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16),
          NavItem(text: 'Inicio', isActivo: false),
          NavItem(text: 'Alumnos', isActivo: false),
          NavItem(text: 'Galeria', isActivo: false),
          NavItem(text: 'Colaboradores', isActivo: false),
          SizedBox(height: 12),
          SearchBoxButton(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
