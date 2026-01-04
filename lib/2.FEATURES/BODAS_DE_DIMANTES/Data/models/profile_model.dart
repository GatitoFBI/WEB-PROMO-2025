class PerfilEstudianteModel {
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

  PerfilEstudianteModel({
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
  });

  factory PerfilEstudianteModel.fromJson(Map<String, dynamic> json) {
    return PerfilEstudianteModel(
      idEstudiante: json['idEstudiante'] ?? '',
      nombreCompleto: json['nombreCompleto'] ?? '',
      urlFoto: json['urlFoto'] ?? '',
      mensajeFuturo: json['mensajeFuturo'] ?? '',
      queQuiereSer: json['queQuiereSer'] ?? '',
      mejorAmigo: json['mejorAmigo'] ?? '',
      profesorFavorito: json['profesorFavorito'] ?? '',
      hobbyFavorito: json['hobbyFavorito'] ?? '',
      cursoFavorito: json['cursoFavorito'] ?? '',
      virtudes: List<String>.from(json['virtudes'] ?? []),
      logrosAcademicos: List<String>.from(json['logrosAcademicos'] ?? []),
      grupos: List<String>.from(json['grupos'] ?? []),
      anecdotaInolvidable: json['anecdotaInolvidable'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idEstudiante': idEstudiante,
      'nombreCompleto': nombreCompleto,
      'urlFoto': urlFoto,
      'mensajeFuturo': mensajeFuturo,
      'queQuiereSer': queQuiereSer,
      'mejorAmigo': mejorAmigo,
      'profesorFavorito': profesorFavorito,
      'hobbyFavorito': hobbyFavorito,
      'cursoFavorito': cursoFavorito,
      'virtudes': virtudes,
      'logrosAcademicos': logrosAcademicos,
      'grupos': grupos,
      'anecdotaInolvidable': anecdotaInolvidable,
    };
  }
}
