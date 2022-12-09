import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constants/colors.dart';

class UserImagePicker extends StatefulWidget {
  final void Function(File image) imageFn;
  const UserImagePicker(this.imageFn, {super.key});
  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickedImage;

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedImageFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 150,
    );
    setState(() {
      _pickedImage = File(pickedImageFile!.path);
    });
    widget.imageFn(_pickedImage!);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: kBurgundyColor,
          backgroundImage:
              _pickedImage != null ? FileImage(_pickedImage as File) : null,
        ),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: kBurgundyColor,
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            onPressed: _pickImage,
            icon: const Icon(Icons.image),
            label: const Text("Add Image")),
      ],
    );
  }
}
