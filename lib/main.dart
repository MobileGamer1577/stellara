import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'favorites_screen.dart';
import 'library_screen.dart';
import 'player_screen.dart';

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
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          surface: const Color(0xFF121212),
          primary: Colors.deepPurpleAccent,
        ),
        fontFamily: '.SF Pro Display',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: -1.0,
          ),
          bodyLarge: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0.2),
          bodyMedium: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      home: const MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const FavoritesScreen(),
    const LibraryScreen(),
    const PlayerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // Erlaubt der Navigation, über dem Content zu schweben
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          0,
          20,
          30,
        ), // Erzeugt den Schwebe-Effekt
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), // Pillen-Form
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color(0xFF1A1A1A),
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false, // Moderner Look ohne Labels
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favoriten',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_music),
                  label: 'Bibliothek',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle_fill),
                  label: 'Player',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
