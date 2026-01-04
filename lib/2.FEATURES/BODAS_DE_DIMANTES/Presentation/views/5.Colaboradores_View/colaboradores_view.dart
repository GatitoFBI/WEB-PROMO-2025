import 'package:flutter/material.dart';

import '../../../Data/datasources/Local_Datasource/profile_local_datasourde.dart';
import '../../widgets/Barra_De_Navegacion/barra_de_navegacion.dart';
import '../../widgets/renderizado_listas_widget.dart';

class ColaboradoresView extends StatelessWidget {
  final fotoProfesoresUrl = "https://picsum.photos/640/300?random=2";
  const ColaboradoresView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //*~~~~~BARRA DE NAVEGACIÓN~~~~~.
            const BarraDeNavegacion(
              rutaActual: "Colaboradores",
            ),

            //*~~~~~TÍTULO WEB~~~~~.
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Principales Colaboradores de la Promoción Bodas de Diamantes 2025',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                  // color: Colors.yellowAccent,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // //*~~~~~FOTO INTRODUCTORIO~~~~~.
            // Container(
            //   width: 600,
            //   height: 340,
            //   margin: const EdgeInsets.only(bottom: 20),
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: NetworkImage(fotoProfesoresUrl),
            //       fit: BoxFit.cover,
            //     ),
            //     borderRadius: BorderRadius.circular(8),
            //   ),
            // ),

            //*~~~~~LISTAS DE PROFESORES BODAS DE DIAMANTES~~~~~.
            RenderizadoListasWidget(listaEstudiantes: profesoresBodasDeDiamantes),
          ],
        ),
      ),
    );
  }
}
