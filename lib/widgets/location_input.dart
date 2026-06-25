import "package:flutter/material.dart";

class LocationInput extends StatefulWidget {
  const LocationInput({super.key});
  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          alignment: Alignment.center,
          child: Text(
            "no location choosen",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.location_on,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(
                "get location",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.map,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: Text(
                "select on map",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
