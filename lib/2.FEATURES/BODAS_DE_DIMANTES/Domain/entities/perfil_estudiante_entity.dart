class PerfilEstudianteEntity {
  final String idEstudiante;
  final String nombreCompleto;
  final String urlFoto;
  final String mensajeFuturo;
  final String queQuiereSer;
  final String mejorAmigo;
  final String profesorFavorito;
  final String hobbyFavorito;
  final String cursoFavorito;
  final List<String> virtudes;
  final List<String> logrosAcademicos;
  final List<String> grupos;
  final String anecdotaInolvidable;
  final String fraseQueMeRepresenta;
  final String cumpleanos;
  final String apodos;
  final String seccion;

  PerfilEstudianteEntity({
    required this.idEstudiante,
    required this.nombreCompleto,
    required this.urlFoto,
    required this.mensajeFuturo,
    required this.queQuiereSer,
    required this.mejorAmigo,
    required this.profesorFavorito,
    required this.hobbyFavorito,
    required this.cursoFavorito,
    required this.virtudes,
    required this.logrosAcademicos,
    required this.grupos,
    required this.anecdotaInolvidable,
    required this.fraseQueMeRepresenta,
    required this.cumpleanos,
    required this.apodos,
    required this.seccion,
  });
}
