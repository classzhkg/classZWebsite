import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';


Widget discoverWidget3En({required BuildContext context}) {
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
                    text: S.of(context).access,
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: " ${S.of(context).senscreening}",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: " ${S.of(context).and} ",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).skilltests,
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
                    text: "${S.of(context).join} ",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "${S.of(context).expertledworkshop} ",
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).focusedonparentingtoSupport,
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
                    text: S.of(context).enjoyEngagingFamilyActivitiesToCreate,
                    style: TextStyle(
                      fontSize: 25.fSize,
                      height: 34.25.fSize / 25.fSize,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: " ${S.of(context).memorableExperience}",
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
          ),
        ],
      ),
    ],
  );
}
