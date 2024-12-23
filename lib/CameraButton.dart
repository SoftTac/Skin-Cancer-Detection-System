import 'package:flutter/material.dart';

class CameraButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CameraButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF3A3A3A),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.minPositive, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text('CAMERA', style: TextStyle(fontWeight: FontWeight.bold,),),
    );
  }
}