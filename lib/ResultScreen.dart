import 'package:flutter/material.dart';
import 'ImageDisplay.dart';
import 'dart:io';
class myResultScreen extends StatefulWidget {
  final String? title;
  final String description;

  final File? image;

  myResultScreen({Key? key,this.title,required this.description,this.image})
      : super(key: key);

  @override
  _myResultScreenState createState() => _myResultScreenState();
}

class _myResultScreenState extends State<myResultScreen> {
  String getTitle() {
    return widget.title ?? 'NOT A CANCER';
  }

  String getDescription() {
    return widget.description;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2E5787),
        appBar: AppBar(
          backgroundColor: Color(0xFF2E5787),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'RESULT',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  getTitle(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 200,
                  width: 250,
                  color: const Color(0xFF757575),
                  child: ImageDisplay(image: widget.image),
                ),
                const SizedBox(height: 130),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xFF3A3A3A),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'DESCRIPTION',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        getDescription(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}