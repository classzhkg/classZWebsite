import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';


Widget discoverWidget3Zh({required BuildContext context}) {
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
                    text: "享受各種折扣或免費的孩童評估，包括",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ), 
                  TextSpan(
                    text: "特殊教育需要篩查和技能測試",
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
                    text: "定期參與",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "專家領導的家長工作坊",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w700,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "，支援你的需要",
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
          ),SizedBox(height: 30.h,),
          CustomRichTextIcon(
            width: 566.w,
            richText: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "享受多元的親子活動，創造",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "屬於你們的回憶",
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
          ),
        ],
      ),
    ],
  );
}
