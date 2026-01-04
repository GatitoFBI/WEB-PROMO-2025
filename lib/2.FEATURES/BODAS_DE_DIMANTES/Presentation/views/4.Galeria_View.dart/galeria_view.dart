import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../widgets/Barra_De_Navegacion/barra_de_navegacion.dart';

class GaleriaView extends StatelessWidget {
  const GaleriaView({super.key});

  // Simulación de 300 imágenes (puedes reemplazar con tus URLs reales)
  // List<String> get imageUrls => List.generate(
  //       300,
  //       (index) => 'https://picsum.photos/id/${index + 1}/500/500', // Reemplaza con tus URLs
  //     );
  // List<String> get imageUrls => List.generate(
  //       300,
  //       (index) {
  //         final height = 500 + (index % 4) * 100; // 300, 400, 500, 600
  //         return 'https://picsum.photos/id/${index + 1}/500/$height';
  //       },
  //     );

  List<String> get imageUrls => [
        "assets/images/Screenshot_99.png",
        "assets/images/galeria/1(1).jpeg",
        "assets/images/galeria/1(2).jpeg",
        "assets/images/galeria/1(3).jpeg",
        "assets/images/galeria/1(4).jpeg",
        "assets/images/galeria/1(5).jpeg",
        "assets/images/galeria/1(6).jpeg",
        "assets/images/galeria/1(7).jpeg",
        "assets/images/galeria/1(8).jpeg",
        "assets/images/galeria/1(9).jpeg",
        "assets/images/galeria/1(10).jpeg",
        "assets/images/galeria/1(11).jpeg",
        "assets/images/galeria/1(12).jpeg",
        "assets/images/galeria/1(13).jpeg",
        "assets/images/galeria/1(14).jpeg",
        "assets/images/galeria/1(15).jpeg",
        "assets/images/galeria/1(16).jpeg",
        "assets/images/galeria/1(17).jpeg",
        "assets/images/galeria/1(18).jpeg",
        "assets/images/galeria/1(19).jpeg",
        "assets/images/galeria/1(20).jpeg",
        "assets/images/galeria/1(21).jpeg",
        "assets/images/galeria/1(22).jpeg",
        "assets/images/galeria/1(23).jpeg",
        "assets/images/galeria/1(24).jpeg",
        "assets/images/galeria/1(25).jpeg",
        "assets/images/galeria/1(26).jpeg",
        "assets/images/galeria/1(27).jpeg",
        "assets/images/galeria/1(28).jpeg",
        "assets/images/galeria/1(29).jpeg",
        "assets/images/galeria/1(30).jpeg",
        "assets/images/galeria/1(31).jpeg",
        "assets/images/galeria/1(32).jpeg",
        "assets/images/galeria/1(33).jpeg",
        "assets/images/galeria/1(34).jpeg",
        "assets/images/galeria/1(35).jpeg",
        "assets/images/galeria/1(36).jpeg",
        "assets/images/galeria/1(37).jpeg",
        "assets/images/galeria/1(38).jpeg",
        "assets/images/galeria/1(39).jpeg",
        "assets/images/galeria/1(40).jpeg",
        "assets/images/galeria/1(41).jpeg",
        "assets/images/galeria/1(42).jpeg",
        "assets/images/galeria/1(43).jpeg",
        "assets/images/galeria/1(44).jpeg",
        "assets/images/galeria/1(45).jpeg",
        "assets/images/galeria/1(46).jpeg",
        "assets/images/galeria/1(47).jpeg",
        "assets/images/galeria/1(48).jpeg",
        "assets/images/galeria/1(49).jpeg",
        "assets/images/galeria/1(50).jpeg",
        "assets/images/galeria/1(51).jpeg",
        "assets/images/galeria/1(52).jpeg",
        "assets/images/galeria/1(53).jpeg",
        "assets/images/galeria/1(54).jpeg",
        "assets/images/galeria/1(55).jpeg",
        "assets/images/galeria/1(56).jpeg",
        "assets/images/galeria/1(57).jpeg",
        "assets/images/galeria/1(58).jpeg",
        "assets/images/galeria/1(59).jpeg",
        "assets/images/galeria/1(60).jpeg",
        "assets/images/galeria/1(61).jpeg",
        "assets/images/galeria/1(62).jpeg",
        "assets/images/galeria/1(63).jpeg",
        "assets/images/galeria/1(64).jpeg",
        "assets/images/galeria/1(65).jpeg",
        "assets/images/galeria/1(66).jpeg",
        "assets/images/galeria/1(67).jpeg",
        "assets/images/galeria/1(68).jpeg",
        "assets/images/galeria/1(69).jpeg",
        "assets/images/galeria/1(70).jpeg",
        "assets/images/galeria/1(71).jpeg",
        "assets/images/galeria/1(72).jpeg",
        "assets/images/galeria/1(73).jpeg",
        "assets/images/galeria/1(74).jpeg",
        "assets/images/galeria/1(75).jpeg",
        "assets/images/galeria/1(76).jpeg",
        "assets/images/galeria/1(77).jpeg",
        "assets/images/galeria/1(78).jpeg",
        "assets/images/galeria/1(79).jpeg",
        "assets/images/galeria/1(80).jpeg",
        "assets/images/galeria/1(81).jpeg",
        "assets/images/galeria/1(82).jpeg",
        "assets/images/galeria/1(83).jpeg",
        "assets/images/galeria/1(84).jpeg",
        "assets/images/galeria/1(85).jpeg",
        "assets/images/galeria/1(86).jpeg",
        "assets/images/galeria/1(87).jpeg",
        "assets/images/galeria/1(88).jpeg",
        "assets/images/galeria/1(89).jpeg",
        "assets/images/galeria/1(90).jpeg",
        "assets/images/galeria/1(91).jpeg",
        "assets/images/galeria/1(92).jpeg",
        "assets/images/galeria/1(93).jpeg",
        "assets/images/galeria/1(94).jpeg",
        "assets/images/galeria/1(95).jpeg",
        "assets/images/galeria/1(96).jpeg",
        "assets/images/galeria/1(97).jpeg",
        "assets/images/galeria/1(98).jpeg",
        "assets/images/galeria/1(99).jpeg",
        "assets/images/galeria/1(100).jpeg",
        "assets/images/galeria/1(101).jpeg",
        "assets/images/galeria/1(102).jpeg",
        "assets/images/galeria/1(103).jpeg",
      ];

  void _openFullScreen(BuildContext context, int initialIndex) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FullScreenGallery(
          imageUrls: imageUrls,
          initialIndex: initialIndex,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BarraDeNavegacion(rutaActual: "Galeria"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Galeria de la Promoción Bodas de Diamantes 2025',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          //*~~~~~COLLAGE DE IMÁGENES~~~~~*
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: MasonryGridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  final url = imageUrls[index];
                  return GestureDetector(
                    onTap: () => _openFullScreen(context, index),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: url,
                        placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Icon(Icons.error),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FullScreenGallery extends StatelessWidget {
  final List<String> imageUrls;
  final int initialIndex;

  const FullScreenGallery({
    super.key,
    required this.imageUrls,
    required this.initialIndex,
  });

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: initialIndex);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left),
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: PhotoViewGallery.builder(
        pageController: controller,
        itemCount: imageUrls.length,
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: CachedNetworkImageProvider(imageUrls[index]),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2.0,
          );
        },
        loadingBuilder: (context, _) => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
