// ... inside _HomeScreenState
void _importSongs() async {
  final newSongs = await FileService.pickSongs();
  if (newSongs.isNotEmpty) {
    setState(() {
      _mockSongs.addAll(newSongs); // Fügt die echten MP3s zur Liste hinzu
    });
  }
}

// Suche in deinem Scaffold die AppBar:
// IconButton(
//   icon: const Icon(Icons.add),
//   onPressed: _importSongs, // Hier die Funktion aufrufen
// ),
