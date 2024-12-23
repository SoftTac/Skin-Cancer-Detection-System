import 'package:flutter/material.dart';
import 'dart:io';


class ImageDisplay extends StatelessWidget {
  final File? image;

  ImageDisplay({required this.image});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: image != null
          ? Image.file(
        image!,
        width: 300,
        height: 200,
        fit: BoxFit.cover,
      )
          : Container(
        width: 250,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.grey, width: 3,),
        ),
        child: Icon(
          Icons.add_photo_alternate_outlined,
          size: 50,
          color: Colors.grey,
        ),
      ),
    );
  }
}