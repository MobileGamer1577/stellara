import 'package:flutter/material.dart';
import '../models/song.dart';
import '../widgets/song_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Eine temporäre Liste, bis wir die echte Datei-Import-Funktion haben
  final List<Song> _mockSongs = [
    Song(id: '1', title: 'Stellara Drift', artist: 'Space Echo', filePath: ''),
    Song(
      id: '2',
      title: 'Clean Beats',
      artist: 'Flutter Producer',
      filePath: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stellara Music'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Hier kommt später der Datei-Picker rein
            },
          ),
        ],
      ),
      body: _mockSongs.isEmpty
          ? const Center(child: Text('Noch keine Songs hinzugefügt.'))
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _mockSongs.length,
              itemBuilder: (context, index) {
                return SongCard(song: _mockSongs[index]);
              },
            ),
    );
  }
}
