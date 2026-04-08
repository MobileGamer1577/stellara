import 'package:flutter/material.dart';

class AppTheme {
  // Helles Design
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      useMaterial3: true,
    );
  }

  // Dunkles Design
  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      // Hier können spezifische Anpassungen für den Dark Mode rein
      useMaterial3: true,
    );
  }
}
