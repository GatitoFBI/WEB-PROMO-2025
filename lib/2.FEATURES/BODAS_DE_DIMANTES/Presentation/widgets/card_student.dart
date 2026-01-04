import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

import '../../../../1.CONFIG/Core/utils/name_string_limit.dart' show limitarString;
import '../../Domain/entities/perfil_estudiante_entity.dart';

class CardStudent extends StatelessWidget {
  final PerfilEstudianteEntity estudiante;

  const CardStudent({
    super.key,
    required this.estudiante,
  });

  @override
  Widget build(BuildContext context) {
    //LayoutBuilder se usa para recuperar el las dimenciones de la pantalla con el context.
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Colors.yellowAccent, // Color del borde
                    width: 2, // Grosor del borde
                  ),
                ),
                color: Colors.transparent,
              ),
            ),
            Positioned(
              bottom: 0, // Coloca el texto en la parte inferior
              child: Container(
                width: constraints.maxWidth - 9,
                height: 90,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      limitarString(estudiante.nombreCompleto),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black, // o cualquier color estático
                      ),
                      maxLines: 1,
                    ),

                    // GradientAnimationText(
                    //   text: Text(
                    //     limitarString(estudiante.nombreCompleto),
                    //     style: const TextStyle(
                    //       fontSize: 25,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     maxLines: 1,
                    //   ),
                    //   colors: const [
                    //     // Color.fromARGB(255, 1, 14, 5),
                    //     // Color(0xff92effd),
                    //     Color(0xFF000000), // Negro puro
                    //     Color(0xFFFFD700), // Amarillo dorado (brillante)
                    //   ],
                    //   duration: const Duration(seconds: 5),
                    //   transform: const GradientRotation(3.14 / 4), // tranform
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GradientAnimationText(
                          text: Text(
                            estudiante.virtudes.first,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          colors: const [
                            // Color.fromARGB(255, 4, 16, 95),
                            // Color.fromARGB(255, 93, 213, 232),
                            Color(0xFF000000), // Negro
                            Color(0xFFFFC107), // Amarillo cálido
                          ],
                          duration: const Duration(seconds: 10),
                          transform: const GradientRotation(3.14 / 4), // tranform
                        ),
                        // const Icon(Icons.person_3_outlined, color: Colors.black),
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ),
            SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  ShakeY(
                    infinite: true,
                    from: 5,
                    duration: const Duration(seconds: 15),
                    child: Hero(
                      tag: estudiante.idEstudiante,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: FadeInImage(
                          height: 180,
                          width: 180,
                          image: AssetImage(estudiante.urlFoto),
                          placeholder: const AssetImage("assets/images/tcy.png"),
                          fit: BoxFit.fill,
                          fadeOutDuration: const Duration(seconds: 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
