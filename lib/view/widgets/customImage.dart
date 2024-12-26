import 'package:flutter/material.dart';

Widget customImage({
  required String imagePath,
  required double height,
  required double width,
}) {
  return Image.asset(
    imagePath,
    height: height,
    width: width,
    fit: BoxFit.contain,
    errorBuilder: (context, error, stackTrace) {
      return const Icon(Icons.error); // Show an error icon
    },
  );
}
