import 'package:flutter/material.dart';

import '../../../Data/datasources/Local_Datasource/profile_local_datasourde.dart';
import '../../../Domain/entities/perfil_estudiante_entity.dart';
import '../../widgets/Barra_De_Navegacion/barra_de_navegacion.dart';
import '../../widgets/renderizado_listas_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String query = '';
  List<PerfilEstudianteEntity> estudiantesFiltrados = [];

  @override
  void initState() {
    super.initState();
    estudiantesFiltrados = generalEstudiantesLocalDataSource;
  }

  void actualizarBusqueda(String texto) {
    setState(() {
      query = texto.toLowerCase();
      estudiantesFiltrados = generalEstudiantesLocalDataSource
          .where((e) => e.nombreCompleto.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101510),
      body: SafeArea(
        child: Column(
          children: [
            //*~~~~~BARRA DE NAVEGACIÓN~~~~~.
            const BarraDeNavegacion(rutaActual: "Search"),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Buscar estudiantes",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.greenAccent),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                onChanged: actualizarBusqueda,
                decoration: InputDecoration(
                  hintText: 'Escribe un nombre...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Widget modularizado
            Expanded(
              child: SingleChildScrollView(child: RenderizadoListasWidget(listaEstudiantes: estudiantesFiltrados)),
            ),
          ],
        ),
      ),
    );
  }
}
