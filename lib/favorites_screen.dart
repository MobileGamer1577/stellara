import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Favoriten',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text(
          'Deine Lieblingssongs',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
