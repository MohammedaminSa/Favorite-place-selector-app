import "package:flutter/material.dart";
import "package:favorite_places/models/place.dart";
import "package:favorite_places/widgets/places_list.dart";

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
        actions: [IconButton(onPressed: null, icon: Icon(Icons.add))],
      ),
      body: PlacesList(places: []),
    );
  }
}
