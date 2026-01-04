import '../../../2.FEATURES/BODAS_DE_DIMANTES/Presentation/views/1.Inicio_View/inicio_view.dart';
import '../../../2.FEATURES/BODAS_DE_DIMANTES/Presentation/views/2.Estudiantes_View/estudiantes_view.dart';
import '../../../2.FEATURES/BODAS_DE_DIMANTES/Presentation/views/4.Galeria_View.dart/galeria_view.dart';
import '../../../2.FEATURES/BODAS_DE_DIMANTES/Presentation/views/5.Colaboradores_View/colaboradores_view.dart';

Map<String, Function()> enumRouterMap = {
  'Inicio': () => const InicioView(),
  'Alumnos': () => const EstudiantesView(),
  'Galeria': () => const GaleriaView(),
  'Colaboradores': () => const ColaboradoresView(),
};
