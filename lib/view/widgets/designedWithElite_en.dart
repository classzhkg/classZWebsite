import 'package:classz_web/generated/l10n.dart';
import 'package:classz_web/utils/app_utils.dart';
import 'package:flutter/material.dart';

Widget designedWithEliteEn({required BuildContext context}){
  return RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          S.of(context).designedWith,
                      style: TextStyle(
                          fontSize: 31.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500, // Font weight 500
                          height: 42.47.fSize /
                              31
                                  .fSize, // Line height factor (42.47px / 31px = ~1.37)

                          letterSpacing: 0.1
                              .fSize, // Set letter spacing (adjust as needed)
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis

                          color: Colors.black),
                    ),TextSpan(
                      text:
                          " ${S.of(context).eliterPerson} ",
                      style: TextStyle(
                          fontSize: 31.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700, // Font weight 500
                          height: 42.47.fSize /
                              31
                                  .fSize, // Line height factor (42.47px / 31px = ~1.37)

                          letterSpacing: 0.1
                              .fSize, // Set letter spacing (adjust as needed)
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis

                          color: Colors.black),
                    ),TextSpan(
                      text:
                          "${S.of(context).inMindOurPlatformAssistsYouToMakeInformedDecisionsAboutYourChildsExtracurricularActivitiesAndTheirGrowth}\n\n",
                      style: TextStyle(
                          fontSize: 31.fSize,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500, // Font weight 500
                          height: 42.47.fSize /
                              31
                                  .fSize, // Line height factor (42.47px / 31px = ~1.37)

                          letterSpacing: 0.1
                              .fSize, // Set letter spacing (adjust as needed)
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis

                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "${S.of(context).learnByQualityNotQuantity}\n",
                      style: TextStyle(
                          fontSize: 31.fSize,
                          fontWeight: FontWeight.w700,
                          height: 42.47.fSize / 31.fSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              );
}