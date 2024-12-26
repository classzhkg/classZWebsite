import 'package:flutter/material.dart';

Widget customText({
  required String text,
  required double font,
  FontWeight? fontWeight,
  Color? color,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextDecoration? textDecoration,
  double? height,
  TextAlign? textAlign,
  TextOverflow? overflow,
  int? maxLines,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: font,
      fontFamily: 'SF Pro Display',
      fontWeight: fontWeight,
      color: color ?? Colors.black,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      decoration: textDecoration,
      height: height,
    ),
    textAlign: textAlign,
    overflow: overflow,
    maxLines: maxLines,
  );
}
