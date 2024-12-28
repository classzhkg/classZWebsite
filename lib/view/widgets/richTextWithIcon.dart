import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRichTextIcon extends StatelessWidget {
  final double width;
  final RichText richText;

  CustomRichTextIcon({required this.width, required this.richText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Icon(
              Icons.thumb_up_alt,
              color: AppColors.rgba28,
              size: 28.w,
            ),
          ),
          SizedBox(width: 8.w), // Add spacing between Icon and RichText
          Expanded(
            child: richText,
          ),
        ],
      ),
    );
  }
}
