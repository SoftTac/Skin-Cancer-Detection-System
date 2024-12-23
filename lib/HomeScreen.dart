import 'package:flutter/material.dart';
import 'DetectButton.dart';
import 'GalleryButton.dart';
import 'CameraButton.dart';
import 'dart:io';
import 'ImageDisplay.dart';
import 'package:image_picker/image_picker.dart';
import 'ResultScreen.dart';
import 'ModelHandler.dart';

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  File? image;
  late ModelHandler modelHandler;
  String? _predictedTitle;

  @override
  void initState() {
    super.initState();
    modelHandler = ModelHandler();
    modelHandler.loadModel();
  }

  String getDescriptionFromTitle(String? title) {
    switch (title) {
      case 'Basal Cell Carcinoma (BCC)':
        return 'Basal Cell Carcinoma (BCC) is a common skin cancer often caused by sun exposure. It appears as a flesh-colored, pearl-like bump or pinkish patch. BCC grows slowly and rarely spreads, but early treatment is important.';
      case 'Actinic Keratosis':
        return 'AKIEC is a pre-cancerous skin lesion caused by prolonged sun exposure. It appears as rough, scaly patches that can be pink, red, or brown. Without treatment, these lesions can progress to squamous cell carcinoma.';
      case 'Melanoma':
        return 'Melanoma arises from melanocytes (cells responsible for skin color). It can appear as an irregularly shaped mole or dark spot with uneven borders. Melanoma is aggressive and can spread to other parts of the body.';
      case 'Benign keratosis-like lesions':
        return 'Benign keratosis-like lesions, such as seborrheic keratosis, are non-cancerous skin growths. They appear as waxy, wart-like spots, often with a stuck-on appearance. These lesions are usually harmless and do not require treatment.';
      case 'Melanocytic Nevus':
        return 'Melanocytic nevus is a common mole formed by clusters of melanocytes. It appears as a small, dark spot on the skin, often with smooth, well-defined edges. These moles are usually benign but should be monitored for changes.';
      case 'Vascular Skin Conditions':
        return 'Vascular skin conditions, such as hemangiomas, are benign growths of blood vessels. They appear as red or purple spots or patches on the skin. These conditions are usually harmless and often resolve on their own.';
      case 'Dermatofibrosarcoma (DFSP)':
        return 'Dermatofibrosarcoma Protuberans (DFSP) is a rare, slow-growing skin tumor. It presents as a raised, firm nodule, usually skin-colored or reddish-brown. DFSP tends to recur locally but rarely spreads to distant sites.';
      default:
        return 'No description available';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E5787),
        centerTitle: true,
        title:const Text(
          'HOME',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
            wordSpacing: 1.5,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 1,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xFF2E5787),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SafeArea ensures the content is displayed within the visible screen area
            const SafeArea(
              minimum: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                ],
              ),
            ),
            // Display an image asset at the top
            SafeArea(
              minimum: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Column(
                children: [
                  Image.asset(
                    'images/Group.png',
                    width: 156,
                    height: 156,
                  ),
                ],
              ),
            ),
            // Button to pick an image from the gallery
            Align(
              alignment: Alignment.center,
              heightFactor: 2,
              child: GalleryButton(
                onPressed: () async {
                  final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
                  if (pickedFile != null) {
                    setState(() {
                      image = File(pickedFile.path);
                    });
                  }
                },
              ),
            ),
            // Button to capture a new image using the camera
            Align(
              alignment: Alignment.center,
              heightFactor: 1,
              child: CameraButton(
                onPressed: () async {
                  final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
                  if (pickedFile != null) {
                    setState(() {
                      image = File(pickedFile.path);
                    });
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Container to display the selected image
            Container(
              height: 200,
              width: 250,
              color: const Color(0xFF757575),
              child: ImageDisplay(image: image),
            ),
            // Button to detect skin cancer using the selected image
            SafeArea(
              minimum: const EdgeInsets.only(top: 40,),
              child: Align(
                alignment: Alignment.center,
                child: DetectButton(
                  onPressed: () async {
                    if (image == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1,),
                          content: Row(
                            children: [
                              Icon(Icons.warning, color: Colors.red),
                              SizedBox(width: 10),
                              Text('Please upload an image'),

                            ],
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                    } else {
                      try {
                        String predictedTitle = await modelHandler.predict(image!);
                        setState(() {
                          _predictedTitle = predictedTitle;
                        });

                        // Use a default title if the prediction is null
                        String displayTitle = _predictedTitle ?? "No prediction available";

                        String description = getDescriptionFromTitle(_predictedTitle);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => myResultScreen(
                              title: displayTitle,
                              description: description,
                              image: image,
                            ),
                          ),
                        );
                      } catch (e) {
                        // Handle any errors that occur during prediction
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Error: $e'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
                  image: image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}