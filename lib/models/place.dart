import "package:uuid/uuid.dart";
import "dart:io";

class Place {
  Place({required this.title, required this.image}) : id = const Uuid().v4();

  final String id;
  final String title;
  final File image;
}
