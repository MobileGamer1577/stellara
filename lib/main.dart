// lib/main.dart

import 'package:flutter/material.dart';
import 'package:stellara/screens/main_scaffold.dart'; // Wichtig: Import anpassen!
import 'package:stellara/utils/theme.dart';

void main() {
  runApp(const StellaraApp());
}

class StellaraApp extends StatelessWidget {
  const StellaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stellara',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // Hier wird jetzt der MainScaffold aufgerufen, der die Pille enthält
      home: const MainScaffold(),
    );
  }
}
