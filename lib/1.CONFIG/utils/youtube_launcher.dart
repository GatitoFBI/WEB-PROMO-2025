import 'package:url_launcher/url_launcher.dart';

class YoutubeLauncher {
  YoutubeLauncher._(); // evita instancias

  /// Abre un video de YouTube en la app o navegador externo
  static Future<void> open(String videoUrl) async {
    final Uri url = Uri.parse(videoUrl);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('No se pudo abrir el video: $videoUrl');
    }
  }
}
