import 'package:flutter/material.dart';

class AppTheme {
  // Unsere aktuelle Hauptfarbe
  static const Color primaryPurple = Color(0xFF6A1B9A);
  static const Color accentPurple = Color(0xFF9C27B0);

  static ThemeData get lilaTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryPurple,
        brightness: Brightness.dark, // Cleanerer Look in Dunkel
        primary: primaryPurple,
      ),
      scaffoldBackgroundColor: const Color(
        0xFF0F0F1A,
      ), // Sehr dunkles Lila/Schwarz
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
