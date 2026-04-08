class Song {
  final String id;
  final String title;
  final String artist;
  final String filePath; // Pfad zur MP3-Datei
  final String? albumArt; // Optional: Pfad zu einem Bild

  Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.filePath,
    this.albumArt,
  });
}
