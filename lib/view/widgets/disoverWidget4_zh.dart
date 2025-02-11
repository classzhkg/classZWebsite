import 'package:classz_web/utils/app_utils.dart';

import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';

Widget discoverWidget4Zh({required BuildContext context}) {
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
                    text: "免費訂閱",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " STEAM手作實驗套件，",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "送到你家中",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
              maxLines: 2, // Restrict to a maximum number of lines
              overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomRichTextIcon(
            width: 566.w,
            richText: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "激發創造力",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "，感受在遊玩學習的樂趣",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              maxLines: 2, // Restrict to a maximum number of lines
              overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomRichTextIcon(
            width: 566.w,
            richText: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "實驗套件均由",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "專家設計",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "，卓越非凡",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              maxLines: 2, // Restrict to a maximum number of lines
              overflow: TextOverflow.ellipsis, // Handle overflow with ellipsis
            ),
          ),
        ],
      ),
    ],
  );
}
