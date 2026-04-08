import 'package:flutter/material.dart';
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
        // Deaktiviert den Splash/Ripple Effekt in der gesamten App
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
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

  // Nur noch 3 Screens: Playlist (Library), Favoriten, Player
  final List<Widget> _screens = [
    const LibraryScreen(),
    const FavoritesScreen(),
    const PlayerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(
          60,
          0,
          60,
          30,
        ), // Größerer Seitenabstand für "klein & mittig"
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 20),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Theme(
              // Entfernt den Ripple-Effekt speziell für die Navigation
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: (index) => setState(() => _selectedIndex = index),
                type: BottomNavigationBarType.fixed,
                backgroundColor: const Color(0xFF1A1A1A),
                selectedItemColor: Theme.of(context).colorScheme.primary,
                unselectedItemColor: Colors.grey.shade600,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.library_music_rounded),
                    label: 'Playlist',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_rounded),
                    label: 'Favoriten',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.play_arrow_rounded, size: 32),
                    label: 'Player',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
