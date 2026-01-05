import 'package:flutter/material.dart';

import '../../../../../1.CONFIG/utils/youtube_launcher.dart';
import '../../../Data/datasources/Local_Datasource/profile_local_datasourde.dart';
import '../../widgets/Barra_De_Navegacion/barra_de_navegacion.dart';
import '../../widgets/renderizado_listas_widget.dart';
import '../../widgets/seccion_estudiantes_widget.dart';
import '../4.Galeria_View.dart/galeria_view.dart';
import 'components/title_inicio_component.dart';

class InicioView extends StatelessWidget {
  final fotoPromocionalUrl = "assets/images/Screenshot_99.png";

  const InicioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101510),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //*~~~~~BARRA DE NAVEGACIÓN~~~~~.
            const BarraDeNavegacion(rutaActual: "Inicio"),

            //*~~~~~TÍTULO WEB~~~~~.
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Promoción Bodas de Diamantes 2025',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                  // color: Colors.yellowAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            //*~~~~~VIDEO INTRODUCTORIO~~~~~.
            GestureDetector(
              child: Container(
                width: 600,
                height: 340,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(fotoPromocionalUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: Icon(Icons.play_circle_fill, color: Colors.white.withOpacity(0.9), size: 64)),
              ),
              onTap: () {
                YoutubeLauncher.open('https://www.youtube.com/watch?v=zX91vEzw6wc');
              },
            ),

            //*~~~~~DESCRIPCIÓN DE LA PROMOCIÓN~~~~~.
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Bodas de Diamantes es una promoción que simboliza la fortaleza, la unión y el brillo que solo el tiempo y el trabajo en equipo pueden forjar. Integrada por cinco secciones sólidamente unidas, esta generación destaca por su talento en múltiples ámbitos: académico, artístico, deportivo y social. Más que estudiantes, son jóvenes comprometidos, creativos y decididos, que dejan huella por su compañerismo, disciplina y capacidad de sobresalir juntos. Son el reflejo de una promoción que, como el diamante, se forma bajo presión y brilla con luz propia dentro y fuera del aula. 💎✨",
                    style: TextStyle(fontSize: 16, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            //*~~~~~TÍTULO DE ESTUDIANTES~~~~~.
            const TitleInicioComponent(titulo: "Estudiantes:"),

            //*~~~~~LISTAS DE ESTUDIANTES BODAS DE DIAMANTES~~~~~.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SeccionEstudiantesWidget(titulo: 'Quinto Grado “A”', estudiantes: estudiantesSeccionA),
                  SeccionEstudiantesWidget(titulo: 'Quinto Grado “B”', estudiantes: estudiantesSeccionB),
                  SeccionEstudiantesWidget(titulo: 'Quinto Grado “C”', estudiantes: estudiantesSeccionC),
                  SeccionEstudiantesWidget(titulo: 'Quinto Grado “D”', estudiantes: estudiantesSeccionD),
                  SeccionEstudiantesWidget(titulo: 'Quinto Grado “E”', estudiantes: estudiantesSeccionE),
                ],
              ),
            ),

            //*~~~~~TÍTULO GALERIA~~~~~.
            const TitleInicioComponent(titulo: "Galeria General:"),

            //*~~~~~GALERIA GENERAL~~~~~.
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const GaleriaView(),
                    transitionsBuilder: (_, animation, __, child) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                );
              },
              child: Container(
                width: 600,
                height: 340,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/images/939A4628.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "¡Ver Galeria General!",
                    style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            //*~~~~~TÍTULO PRINCIPALES COLABORADORES~~~~~.
            const TitleInicioComponent(titulo: "Principales Colaboradores Construcción Del Anuario Digital 2025 TCY:"),

            //*~~~~~LISTAS DE PRINCIPALES COLABORADORES BODAS DE DIAMANTES~~~~~.
            RenderizadoListasWidget(listaEstudiantes: profesoresBodasDeDiamantes),
          ],
        ),
      ),
    );
  }
}
