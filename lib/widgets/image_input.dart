import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";
import "dart:io";

class ImageInput extends StatefulWidget {
  const ImageInput({super.key, required this.onPickImage});

  final void Function(File image) onPickImage;

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedfImage;

  void _takePicture() async {
    final imagePicker = ImagePicker();

    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );

    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedfImage = File(pickedImage.path);
    });

    widget.onPickImage(_selectedfImage!);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = TextButton.icon(
      onPressed: _takePicture,
      icon: const Icon(Icons.camera),
      label: const Text('Take Picture'),
    );
    if (_selectedfImage != null) {
      content = GestureDetector(
        onTap: _takePicture,
        child: Image.file(
          _selectedfImage!,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      );
    }
    return Container(
      height: 250,
      width: double.infinity,

      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      alignment: Alignment.center,
      child: content,
    );
  }
}
