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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          backgroundColor: Colors.grey,
        ),
      ],
    );
  }
}
