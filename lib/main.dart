import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const StellaraApp());
}

class StellaraApp extends StatelessWidget {
  const StellaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stellara',
      // Zentrales Design-System
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          surface: const Color(0xFF121212), // Modernes Dunkelgrau
          primary: Colors.deepPurpleAccent,
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Nutzt automatisch das definierte Surface-Grau
      body: Center(
        child: Text(
          'Stellara',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
