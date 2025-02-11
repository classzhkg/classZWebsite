import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/richTextWithIcon.dart';
import 'package:flutter/material.dart';

Widget discoverWidget4En({required BuildContext context}) {
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
                    text: S.of(context).receiveANewSteamCraftKit,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${S.of(context).deliveredToYourHome} ",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "${S.of(context).everyMonth} ",
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: S.of(context).freeOfCharge,
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
                    text: S.of(context).sparkCreativity,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${S.of(context).withFunInteractiveProjects}",
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
                    text: S.of(context).designedBy,
                    style: TextStyle(
                        fontSize: 25.fSize,
                        height: 34.25.fSize / 25.fSize,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${S.of(context).childDevelopment}",
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
        ],
      ),
    ],
  );
}
