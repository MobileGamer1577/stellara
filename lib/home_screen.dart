import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Greift auf das moderne Dunkelgrau (surface) aus der main.dart zu
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Text(
          'Startseite',
          // Greift auf die moderne dicke Apple-Schriftart aus der main.dart zu
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
