import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';

Widget discoverWidget2En({required BuildContext context}) {
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
                    text: S
                        .of(context)
                        .receiveBriefPerformanceReportsOnPlatformAfterEachLessonTo,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${S.of(context).trackgrowth}",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
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
                    text: S.of(context).knowYourChilds,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: S.of(context).performanceLevel,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: S.of(context).incomparisontopeers,
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
                    text: S.of(context).make,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text:
                        "${S.of(context).confident}, ${S.of(context).targeted}",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${S.of(context).learningdecisions}",
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
      ),
    ],
  );
}
