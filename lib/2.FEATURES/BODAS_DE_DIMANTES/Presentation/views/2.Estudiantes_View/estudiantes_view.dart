import 'package:flutter/material.dart';

import '../../../../../1.CONFIG/utils/youtube_launcher.dart';
import '../../../Data/datasources/Local_Datasource/profile_local_datasourde.dart';
import '../../widgets/Barra_De_Navegacion/barra_de_navegacion.dart';
import '../../widgets/seccion_estudiantes_widget.dart';

class EstudiantesView extends StatelessWidget {
  final fotoPromocionalUrl = "assets/images/939A4628.jpg";

  const EstudiantesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //*~~~~~BARRA DE NAVEGACIÓN~~~~~.
            const BarraDeNavegacion(
              rutaActual: "Alumnos",
            ),

            //*~~~~~TÍTULO WEB~~~~~.
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Estudiantes de la Promoción Bodas de Diamantes 2025',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                  // color: Colors.yellowAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            //*~~~~~FOTO INTRODUCTORIO~~~~~.
            GestureDetector(
              child: Container(
                width: 600,
                height: 340,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(fotoPromocionalUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onTap: () {
                YoutubeLauncher.open(
                  'https://www.youtube.com/watch?v=FjtQUCS1now',
                );
              },
            ),

            //*~~~~~LISTAS DE ESTUDIANTES BODAS DE DIAMANTES~~~~~.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SeccionEstudiantesWidget(
                    titulo: 'Quinto Grado “A”',
                    estudiantes: estudiantesSeccionA,
                  ),
                  SeccionEstudiantesWidget(
                    titulo: 'Quinto Grado “B”',
                    estudiantes: estudiantesSeccionB,
                  ),
                  SeccionEstudiantesWidget(
                    titulo: 'Quinto Grado “C”',
                    estudiantes: estudiantesSeccionC,
                  ),
                  SeccionEstudiantesWidget(
                    titulo: 'Quinto Grado “D”',
                    estudiantes: estudiantesSeccionD,
                  ),
                  SeccionEstudiantesWidget(
                    titulo: 'Quinto Grado “E”',
                    estudiantes: estudiantesSeccionE,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
