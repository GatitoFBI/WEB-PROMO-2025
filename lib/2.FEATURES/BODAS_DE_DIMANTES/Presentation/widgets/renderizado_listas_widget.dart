import 'package:flutter/material.dart';

import '../../Domain/entities/perfil_estudiante_entity.dart';
import 'Details_Profile_Student/perfil_estudiante_widget.dart';
import 'card_student.dart';

class RenderizadoListasWidget extends StatelessWidget {
  final List<PerfilEstudianteEntity> listaEstudiantes;
  const RenderizadoListasWidget({super.key, required this.listaEstudiantes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), // Importante para evitar conflictos con el scroll padre
        itemCount: listaEstudiantes.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 260,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          mainAxisExtent: 270,
        ),
        itemBuilder: (context, index) {
          final personaPromocion = listaEstudiantes[index];
          return GestureDetector(
            child: CardStudent(estudiante: personaPromocion),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PerfilEstudianteWidget(
                    perfil: personaPromocion,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
