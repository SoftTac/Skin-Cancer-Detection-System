import 'package:flutter/material.dart';


class GalleryButton extends StatelessWidget {
  final VoidCallback onPressed;

  GalleryButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF3A3A3A),
        foregroundColor: Colors.white,
        minimumSize: Size(double.minPositive, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text('GALLERY', style: TextStyle(fontWeight: FontWeight.bold,),),
    );
  }
}