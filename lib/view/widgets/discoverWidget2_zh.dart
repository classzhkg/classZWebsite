import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';


Widget discoverWidget2Zh({required BuildContext context}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRichTextIcon(
            width: 566.w,
            richText: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "每節課後，透過平台接收課堂表現報告，",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "追蹤學習進度",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w700,color: Colors.black
                    ),
                  ),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),SizedBox(height: 30.h,),
          CustomRichTextIcon(
            width: 566.w,
            richText: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "了解你孩子在同輩中的",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "表現水平",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w700,color: Colors.black
                    ),
                  ),
                  
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),SizedBox(height: 30.h,),
          CustomRichTextIcon(
            width: 566.w,
            richText: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "為孩子做出",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "更針對性",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w700,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "的課程組合和學習決策",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ),
                ],
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ],
  );
}
