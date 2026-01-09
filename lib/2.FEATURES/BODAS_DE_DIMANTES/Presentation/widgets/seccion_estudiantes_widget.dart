import 'package:flutter/material.dart';

import '../../Domain/entities/perfil_estudiante_entity.dart';
import 'renderizado_listas_widget.dart';

class SeccionEstudiantesWidget extends StatelessWidget {
  final String titulo;
  final List<PerfilEstudianteEntity> estudiantes;
  final String? imageAsset; // imagen local del aula
  final List<String>? nombres;

  const SeccionEstudiantesWidget({
    super.key,
    required this.titulo,
    required this.estudiantes,
    this.imageAsset,
    this.nombres,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: ExpansionTile(
        title: Text(
          'Estudiantes $titulo',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        collapsedBackgroundColor: Colors.white10,
        backgroundColor: Colors.transparent,
        textColor: Colors.white,
        iconColor: Colors.white,
        children: [RenderizadoListasWidget(listaEstudiantes: estudiantes, imageAsset: imageAsset, nombres: nombres)],
      ),
    );
  }
}
