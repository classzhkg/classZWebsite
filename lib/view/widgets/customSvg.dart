import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget customSvg(
    {required String imagePath,
    required double height,
    required double width,
    Color? color}) {
  return SvgPicture.asset(
    imagePath,
    width: width,
    height: height,
    color: color,
  );
}
