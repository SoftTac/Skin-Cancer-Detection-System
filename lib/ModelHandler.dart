import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:image/image.dart' as imglib;

class ModelHandler {
  late Interpreter tflite;
  late List<String> labels;

  Future<void> loadModel() async {
    final response = await rootBundle.loadString('assets/cnn_labels.txt');
    labels = response.split('\n').where((label) => label.isNotEmpty).toList();
    tflite = await Interpreter.fromAsset('assets/cnn.tflite');
  }

  Future<String> predict(File image) async {
    await loadModel(); // Wait for the model to load before making a prediction

    final img = imglib.decodeImage(image.readAsBytesSync());
    final resizedImg = imglib.copyResize(img!, width: 224, height: 224);

    // Prepare input in the format TensorFlow Lite expects
    final input = List<List<List<List<double>>>>.generate(
      1,
          (_) => List<List<List<double>>>.generate(
        224,
            (i) => List<List<double>>.generate(
          224,
              (j) {
            final pixel = resizedImg.getPixel(j, i); // Corrected x, y order
            return [
              pixel.r / 255.0, // Red
              pixel.g / 255.0,  // Green
              pixel.b / 255.0,   // Blue
            ];
          },
        ),
      ),
    );

    final List<List<double>> output = List.generate(1, (_) => List.filled(labels.length, 0.0));

    tflite.run(input, output);
    final maxValue = output[0].reduce((curr, next) => curr > next ? curr : next);
    final predictedIndex = output[0].indexOf(maxValue);

    if (predictedIndex != -1) {
      return labels[predictedIndex];
    } else {
      return 'Unknown';
    }
  }
}