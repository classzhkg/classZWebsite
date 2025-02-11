import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';

Widget discoverWidget1Zh({required BuildContext context}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomRichTextIcon(
        width: 566.w,
        richText: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "簡潔資料",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              TextSpan(
                text: "，了解各課外課程特色",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
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
                text: "掌握各教育中心教練",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              TextSpan(
                text: "背景和專長",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              TextSpan(
                text: "，選擇最合適的課程",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
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
                text: "課程時間表",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              TextSpan(
                text: "一目了然，方便規劃",
                style: TextStyle(
                    fontSize: 25.fSize,
                    height: 34.25.fSize / 25.fSize,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ],
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
