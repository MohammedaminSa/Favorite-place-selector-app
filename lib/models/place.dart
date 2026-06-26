import "package:uuid/uuid.dart";
import "dart:io";

class Location {
  Location({required this.lat, required this.lng});

  final double lat;
  final double lng;
}

class Place {
  Place({required this.title, required this.image}) : id = const Uuid().v4();

  final String id;
  final String title;
  final File image;
}
