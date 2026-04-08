import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Modernes Dunkelgrau
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.0, end: 1.0),
          duration: const Duration(
            milliseconds: 2500,
          ), // 2,5 Sekunden Animation
          curve: Curves.easeIn,
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: Transform.translate(
                offset: Offset(0, 20 * (1 - value)), // Leichter Slide-Up Effekt
                child: child,
              ),
            );
          },
          child: const Text(
            'Willkommen bei Stellara',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w300,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
