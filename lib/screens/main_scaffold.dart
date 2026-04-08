import 'package:flutter/material.dart';
import 'home_screen.dart'; // Deine Bibliothek

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 0;

  // Hier definieren wir die verschiedenen Seiten
  final List<Widget> _pages = [
    const HomeScreen(), // Index 0: Bibliothek
    const Center(child: Text('Favoriten (In Kürze)')), // Index 1: Platzhalter
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ExtendBody erlaubt es der Pille, über dem Inhalt zu "schweben"
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: _buildFloatingNavigationBar(),
    );
  }

  Widget _buildFloatingNavigationBar() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        height: 65,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9), // Cleaner dunkler Look
          borderRadius: BorderRadius.circular(30), // Der Pillen-Effekt
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(Icons.library_music_rounded, "Bibliothek", 0),
            _buildNavItem(Icons.favorite_rounded, "Favoriten", 1),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.deepPurpleAccent : Colors.white60,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.deepPurpleAccent : Colors.white60,
              fontSize: 10,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
