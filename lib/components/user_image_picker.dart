import 'dart:io';

import 'package:flutter/material.dart';

class UserImagePicker extends StatefulWidget {
  final void Function(File image) onImagePicker;
  const UserImagePicker({Key? key, required this.onImagePicker})
      : super(key: key);

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {

  File? _image;

  void _pickImage() {

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey,
          backgroundImage: _image != null ? FileImage(_image!) : null,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: _pickImage,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text('Adicionar Imagem')
            ],
          ),
        )
      ],
    );
  }
}
