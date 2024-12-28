import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';

Widget discoverWidget1En({required BuildContext context}) {
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
                text: S
                    .of(context)
                    .enrollInExtraCurriculumClassWithInformedDetails,
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: " ${S.of(context).informedDetails}",
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w700,
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
                text: S
                    .of(context)
                    .graspeachcenterscoachbackgroundandexpertisetoselectthebestfit,
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: " ${S.of(context).backgroundAndExpertise} ",
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: S.of(context).toSelectTheBestFit,
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w400,
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
                text: S.of(context).review,
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: " ${S.of(context).classSchedules} ",
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: S.of(context).forEasyPlanning,
                style: TextStyle(
                  fontSize: 25.fSize,
                  height: 34.25.fSize / 25.fSize,
                  fontWeight: FontWeight.w400,
                ),
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
