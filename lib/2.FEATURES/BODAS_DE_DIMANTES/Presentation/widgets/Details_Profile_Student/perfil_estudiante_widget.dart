import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../Domain/entities/perfil_estudiante_entity.dart';

class PerfilEstudianteWidget extends StatelessWidget {
  final PerfilEstudianteEntity perfil;

  const PerfilEstudianteWidget({super.key, required this.perfil});

  @override
  Widget build(BuildContext context) {
    final p = perfil;

    final isLargeScreen = MediaQuery.of(context).size.width > 900;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Perfil de ${p.nombreCompleto}", style: const TextStyle(color: Colors.yellow)),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: const Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: isLargeScreen
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Columna izquierda
                  Expanded(child: _buildLeftColumn(p)),
                  const SizedBox(width: 32),
                  // Columna derecha
                  Expanded(child: _buildRightColumn(p)),
                ],
              )
            : Column(
                children: [
                  _buildLeftColumn(p),
                  const SizedBox(height: 24),
                  _buildRightColumn(p),
                ],
              ),
      ),
    );
  }

  String _valueOrNotRegistered(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "No registrado";
    }
    return value;
  }

  Widget _buildLeftColumn(PerfilEstudianteEntity p) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(p.urlFoto),
                radius: 50,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  "${p.nombreCompleto} (${p.seccion})",
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        FadeInLeft(child: _buildCard("Mensaje para mi yo del futuro", p.mensajeFuturo)),
        const SizedBox(height: 16),
        FadeInLeft(child: _buildCard("Frase que me representa", p.fraseQueMeRepresenta)),
        const SizedBox(height: 16),
        FadeInLeft(child: _buildCard("Anécdota inolvidable", p.anecdotaInolvidable)),
        const SizedBox(height: 16),
        FadeInLeft(child: _buildCard("Apodos en secundaria", p.apodos)),
        const SizedBox(height: 16),
        FadeInLeft(child: _buildCard("Cumpleaños", p.cumpleanos)),
      ],
    );
  }

  Widget _buildRightColumn(PerfilEstudianteEntity p) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInRight(child: _buildInfoTile("¿Qué quiero ser de grande?", p.queQuiereSer)),
        FadeInRight(child: _buildInfoTile("¿Mejor amig@?", p.mejorAmigo)),
        FadeInRight(child: _buildInfoTile("¿Mejor profesor?", p.profesorFavorito)),
        FadeInRight(child: _buildInfoTile("¿Hobby favorito?", p.hobbyFavorito)),
        FadeInRight(child: _buildInfoTile("¿Curso favorito?", p.cursoFavorito)),
        const SizedBox(height: 16),
        FadeInUp(child: _buildChipsSection("Virtudes", p.virtudes)),
        FadeInUp(child: _buildChipsSection("Blucs Pertenecidos", p.grupos)),
        FadeInUp(child: _buildListSection("Logros Académicos", p.logrosAcademicos)),
      ],
    );
  }

  Widget _buildCard(String title, String content) {
    return Card(
      color: const Color(0xFF2E2E2E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.yellow)),
            const SizedBox(height: 10),
            Text(
              _valueOrNotRegistered(content),
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String content) {
    return Card(
      color: const Color(0xFF2A2A2A),
      child: ListTile(
        title: Text(title, style: const TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold)),
        subtitle: Text(
          _valueOrNotRegistered(content),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildChipsSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.yellow)),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: items
              .map((item) => Chip(
                    label: Text(item, style: const TextStyle(color: Colors.black)),
                    backgroundColor: Colors.yellow,
                  ))
              .toList(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildListSection(String title, List<String> items) {
    final content = items.isEmpty ? "No registrado" : items.map((e) => "• $e").join("\n");

    return _buildCard(title, content);
  }
}
