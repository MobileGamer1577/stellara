import 'package:file_picker/file_picker.dart';
import '../models/song.dart';

class FileService {
  // Funktion zum Auswählen einer oder mehrerer MP3-Dateien
  static Future<List<Song>> pickSongs() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3'],
      allowMultiple: true,
    );

    if (result != null) {
      return result.files.map((file) {
        return Song(
          id: DateTime.now().millisecondsSinceEpoch.toString() + file.name,
          title: file.name.replaceAll('.mp3', ''),
          artist: 'Unbekannter Künstler',
          filePath: file.path ?? '',
        );
      }).toList();
    }
    return [];
  }
}
