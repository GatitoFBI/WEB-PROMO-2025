import 'package:flutter/material.dart';

import '1.CONFIG/Theme/app_theme.dart';
import '2.FEATURES/BODAS_DE_DIMANTES/Presentation/views/1.Inicio_View/inicio_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bobas de Diamantes",
      themeMode: ThemeMode.system, // Cambia tema auto según el sistema
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      home: const InicioView(),
    );
  }
}
