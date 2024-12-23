import 'package:flutter/material.dart';
import 'dart:io';
class DetectButton extends StatelessWidget {
  final VoidCallback onPressed;
  final File? image;
  DetectButton({required this.onPressed,required this.image});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF519DF5),
        foregroundColor: Colors.white,
        minimumSize: Size(double.minPositive, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text('DETECT', style: TextStyle(fontWeight: FontWeight.bold,),),
    );
  }
}