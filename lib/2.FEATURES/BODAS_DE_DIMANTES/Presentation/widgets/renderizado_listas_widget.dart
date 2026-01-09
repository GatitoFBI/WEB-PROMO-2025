import 'package:flutter/material.dart';

import '../../Domain/entities/perfil_estudiante_entity.dart';
import 'Details_Profile_Student/perfil_estudiante_widget.dart';
import 'card_student.dart';

class RenderizadoListasWidget extends StatelessWidget {
  final String? imageAsset;
  final List<String>? nombres;
  final List<PerfilEstudianteEntity> listaEstudiantes;

  const RenderizadoListasWidget({super.key, this.imageAsset, this.nombres, required this.listaEstudiantes});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// 🖼️ Imagen del aula (opcional)
        if (imageAsset != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(imageAsset!, height: 220, width: double.infinity, fit: BoxFit.cover),
          ),

        if (imageAsset != null) const SizedBox(height: 12),

        /// 👥 Nombres (opcional)
        if (nombres != null && nombres!.isNotEmpty)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: nombres!
                    .take(6) // 👈 cantidad visible
                    .map(
                      (nombre) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(12)),
                        child: Text(nombre, style: const TextStyle(fontSize: 12, color: Colors.black)),
                      ),
                    )
                    .toList(),
              ),

              const SizedBox(height: 6),

              Center(
                child: TextButton.icon(
                  onPressed: () => _mostrarDialogoNombres(context, nombres!),
                  icon: const Icon(Icons.people_outline, size: 18),
                  label: const Text("Ver lista completa"),
                  style: TextButton.styleFrom(foregroundColor: Colors.blueAccent, padding: EdgeInsets.zero),
                ),
              ),
            ],
          ),

        if (nombres != null && nombres!.isNotEmpty) const SizedBox(height: 16),

        /// 🧱 Grid de estudiantes (SIN SCROLL)
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listaEstudiantes.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 260,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 270,
          ),
          itemBuilder: (context, index) {
            final estudiante = listaEstudiantes[index];
            return GestureDetector(
              child: CardStudent(estudiante: estudiante),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => PerfilEstudianteWidget(perfil: estudiante)));
              },
            );
          },
        ),
      ],
    );
  }

  void _mostrarDialogoNombres(BuildContext context, List<String> nombres) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Lista completa de estudiantes"),
        content: SizedBox(
          width: 400,
          child: Scrollbar(
            thumbVisibility: true,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: nombres.length,
              separatorBuilder: (_, __) => const Divider(height: 8),
              itemBuilder: (_, index) => Text(nombres[index], style: const TextStyle(fontSize: 14)),
            ),
          ),
        ),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cerrar"))],
      ),
    );
  }
}
