import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Nutzt das moderne Dunkelgrau aus dem Theme
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Text(
          'Bibliothek',
          // Nutzt die dicke Apple-Schriftart aus dem Theme
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
