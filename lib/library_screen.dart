import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Bibliothek',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Text(
          'Deine Playlists',
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
