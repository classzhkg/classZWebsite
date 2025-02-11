import 'package:classz_web/generated/l10n.dart';

import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customSvg.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:classz_web/view/widgets/designedWithELite_zh.dart';
import 'package:classz_web/view/widgets/designedWithElite_en.dart';
import 'package:classz_web/view/widgets/discoverWidget1_en.dart';
import 'package:classz_web/view/widgets/discoverWidget1_zh.dart';
import 'package:classz_web/view/widgets/discoverWidget2_en.dart';
import 'package:classz_web/view/widgets/discoverWidget2_zh.dart';
import 'package:classz_web/view/widgets/discoverWidget3_en.dart';
import 'package:classz_web/view/widgets/discoverWidget3_zh.dart';
import 'package:classz_web/view/widgets/discoverWidget4_en.dart';
import 'package:classz_web/view/widgets/disoverWidget4_zh.dart';
import 'package:flutter/material.dart';
import 'package:classz_web/view/widgets/customImage.dart';

class LandingPage extends StatelessWidget {
  final Function onLanguageChange;
  LandingPage({super.key, required this.onLanguageChange});

  final GlobalKey _contactKey = GlobalKey();

  final GlobalKey _visionKey = GlobalKey();

  final GlobalKey _discoverKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final currentLocale = Localizations.localeOf(context);

    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _allfont(context: context, local: currentLocale),
                SizedBox(
                  height: 203.h,
                ),
                _vision(key: _visionKey, context: context),
                SizedBox(
                  height: 203.h,
                ),
                _discover(
                    key: _discoverKey, context: context, local: currentLocale),
                SizedBox(
                  height: 203.h,
                ),
                _launch(context: context),
                SizedBox(
                  height: 203.h,
                ),
                _contact(key: _contactKey)
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget _contact({required GlobalKey key}) {
//print(contactDimensions.aspectRatio);
    return LayoutBuilder(builder: (context, constraints) {
      final containerW = 1440.w;
      final containerH = 424.h;
      // print(containerH);
      return Container(
        key: key,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.rgba761.withOpacity(0.4),
              AppColors.rgba631.withOpacity(0.4)
            ])),
        width: containerW,
        height: containerH,
        child: Stack(
          children: [
            Positioned(
              top: 71.h, // 71/424
              left: 97.w, // 91/1440
              bottom: 0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(
                      text:
                          "${S.of(context).anythingInMind}\n${S.of(context).chatWithUs}",
                      font: 0.094.fontSize(containerH), // 40/424
                      height: 54.8 / 40,
                      color: AppColors.rgba28,
                      fontWeight: FontWeight.w700),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      customImage(
                        imagePath: ImagePath.qr,
                        height: 141.h, // 141/424
                        width: 141.w, // 141/1440
                      ),
                      SizedBox(
                          width:
                              0.016.relativeToWidth(containerW)), // 23.67/1440
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _iconText(
                              imagePath: ImagePath.whatsappSvg,
                              size: 0.075.relativeToHeight(
                                  containerH), // 32/424 ≈ 0.075
                              text: S.of(context).phoneNumber),
                          SizedBox(
                              height: 0.038.relativeToHeight(
                                  containerH)), // 16/424 ≈ 0.038
                          _iconText(
                              imagePath: ImagePath.mailSvg,
                              size: 0.049.relativeToHeight(
                                  containerH), // 21/424 ≈ 0.049
                              text: S.of(context).emailAddress)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0.057.relativeToWidth(containerW), // 82/1440 ≈ 0.057
              child: customImage(
                  imagePath: ImagePath.phone2,
                  height: containerH * 0.835, // 354/424 ≈ 0.835
                  width: containerW * 0.259 // 373/1440 ≈ 0.259
                  ),
            ),
            Positioned(
              bottom: 0,
              right: 0.219.relativeToWidth(containerW), // 315/1440 ≈ 0.219
              child: customImage(
                  imagePath: ImagePath.phone1,
                  height: 0.835.relativeToHeight(containerH), // 354/424 ≈ 0.835
                  width: 0.243.relativeToWidth(containerW) // 350/1440 ≈ 0.243
                  ),
            ),

            // ... rest of your positioned widgets
          ],
        ),
      );
    });
  }

  Widget _iconText(
      {required String imagePath,
      required double size,
      required String text,
      Color? color}) {
    return Row(
      children: [
        customSvg(
            imagePath: imagePath, height: size, width: size, color: color),
        SizedBox(
          width: 15.w,
        ),
        customText(
            text: text,
            font: 30.w,
            height: 35.w / 30.w,
            letterSpacing: .12,
            color: AppColors.rgba28)
      ],
    );
  }

  Widget _launch({required BuildContext context}) {
    return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
              text: "${S.of(context).stayTuned}\n",
              style: TextStyle(
                  fontSize: 60.w,
                  letterSpacing: 0.1,
                  color: AppColors.rgba28,
                  fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: S.of(context).toBeLaunchedInLate2025,
              style: TextStyle(
                  color: AppColors.rgba28,
                  fontSize: 60.w,
                  letterSpacing: 0.1,
                  height: 1,
                  fontWeight: FontWeight.w700),
            )
          ])),
    );
  }

  Widget _discover(
      {required GlobalKey key,
      required Locale local,
      required BuildContext context}) {
    return Column(
      key: key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: customText(
              text: S.of(context).discoverOurPlatform,
              font: 60.fSize,
              height: 80.8.fSize / 60.fSize,
              color: AppColors.rgba28,
              letterSpacing: 0.1),
        ),
        SizedBox(
          height: 100.h,
        ),
        _discoverWidget1(context: context, local: local),
        SizedBox(
          height: 100.h,
        ),
        _discoverWidget2(context: context, local: local),
        SizedBox(
          height: 100.h,
        ),
        _discoverWidget3(context: context, local: local),
        SizedBox(
          height: 100.h,
        ),
        _discoverWidget4(context: context, local: local),
      ],
    );
  }

  Widget _discoverWidget1(
      {required BuildContext context, required Locale local}) {
    final contactDimensions = OriginalDimension(
      width: 1440,
      height: 500,
    );
    final containerw = SizeConfig.screenWidth;
    final containerH = containerw / contactDimensions.aspectRatio;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: containerw,
        height: containerH,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: S.of(context).smartClassEnrollment,
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40.h,
                ),
                local.languageCode == 'en'
                    ? discoverWidget1En(context: context)
                    : discoverWidget1Zh(context: context)
              ],
            ),
            customImage(
                imagePath: ImagePath.discover1, height: 601.w, width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _discoverWidget2(
      {required BuildContext context, required Locale local}) {
    final contactDimensions = OriginalDimension(
      width: 1440,
      height: 500,
    );
    final containerw = SizeConfig.screenWidth;
    final containerH = containerw / contactDimensions.aspectRatio;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: containerw,
        height: containerH,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: S.of(context).performanceInsights,
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40.h,
                ),
                local.languageCode == 'en'
                    ? discoverWidget2En(context: context)
                    : discoverWidget2Zh(context: context)
              ],
            ),
            customImage(
                imagePath: ImagePath.discover2, height: 601.w, width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _discoverWidget3(
      {required BuildContext context, required Locale local}) {
    final contactDimensions = OriginalDimension(
      width: 1440,
      height: 500,
    );
    final containerw = SizeConfig.screenWidth;
    final containerH = containerw / contactDimensions.aspectRatio;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: containerw,
        height: containerH,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: S.of(context).trainingsAndActivities,
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40.h,
                ),
                local.languageCode == 'en'
                    ? discoverWidget3En(context: context)
                    : discoverWidget3Zh(context: context)
              ],
            ),
            customImage(
                imagePath: ImagePath.discover3, height: 601.w, width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _discoverWidget4(
      {required BuildContext context, required Locale local}) {
    final contactDimensions = OriginalDimension(
      width: 1440,
      height: 500,
    );
    final containerw = SizeConfig.screenWidth;
    final containerH = containerw / contactDimensions.aspectRatio;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: containerw,
        height: containerH,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: S.of(context).monthlySteamCraftKits,
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40.h,
                ),
                local.languageCode == 'en'
                    ? discoverWidget4En(context: context)
                    : discoverWidget4Zh(context: context)
              ],
            ),
            customImage(
                imagePath: ImagePath.discover4, height: 601.w, width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _allfont({required BuildContext context, required Locale local}) {
    return SizedBox(
      width: 1441.w,
      height: 911.h,
      child: Stack(
        children: [
          Positioned(top: 370.h, left: 645.w, child: _smallCircle()),
          Positioned(top: 48.h, left: 885.w, child: _bigCircle()),
          Positioned(
              left: 28.w, top: 22.h, child: _headerSection(context: context)),
          Positioned(
              top: 292.h,
              left: 67.w,
              child: _openingText(context: context, local: local)),
          Positioned(
              top: 224.h,
              right: 162.13.w,
              child: customImage(
                  imagePath: ImagePath.iphone, height: 598.h, width: 323.w))
        ],
      ),
    );
  }

  Widget _headerSection({required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customImage(imagePath: ImagePath.logo, height: 178.h, width: 272.w),
        SizedBox(
          width: 116.w,
        ),
        InkWell(
            onTap: () {
              scrollToTarget(_visionKey);
            },
            child: customText(
                text: S.of(context).ourVision,
                font: 25.fSize,
                color: AppColors.rgba28)),
        SizedBox(
          width: 130.w,
        ),
        InkWell(
            onTap: () {
              scrollToTarget(_discoverKey);
            },
            child: customText(
                text: S.of(context).features,
                font: 25.fSize,
                color: AppColors.rgba28)),
        SizedBox(
          width: 130.w,
        ),
        InkWell(
            onTap: () {
              onLanguageChange();
            },
            child: customText(
                text: "English/繁", font: 25.fSize, color: AppColors.rgba28)),
        SizedBox(
          width: 134.w,
        ),
        InkWell(
            onTap: () {
              scrollToTarget(_contactKey);
            },
            child: _contactUs(context: context))
      ],
    );
  }

  Widget _contactUs({required BuildContext context}) {
    return Container(
      width: 206.w,
      height: 60.h,
      decoration: BoxDecoration(
          color: AppColors.rgba631, borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: customText(
              text: S.of(context).contactUs,
              font: 25.fSize,
              textAlign: TextAlign.center,
              height: 1,
              fontWeight: FontWeight.w600,
              color: Colors.white)),
    );
  }

  Widget _openingText({required BuildContext context, required Locale local}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.zero,
          width: 728.w,
          // height: 509.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                text: S
                    .of(context)
                    .aSmarterWayToMakeLearningEfficientForYourChild,
                font: 50.w,
                fontWeight: FontWeight.w800, // Font weight 800 (Bold)
                color: AppColors.rgba28, // Text color (black)
                letterSpacing: 0.1,
                height: 68.5.w / 50.w,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
              SizedBox(
                height: 50.h,
              ),
              local.languageCode == "en"
                  ? designedWithEliteEn(context: context)
                  : designedWithEliteZh(context: context)
            ],
          ),
        ),
      ],
    );
  }

  Widget _vision({required GlobalKey key, required BuildContext context}) {
    final contactDimensions = OriginalDimension(
      width: 1355,
      height: 806,
    );
    final boxDimensions = OriginalDimension(width: 1355, height: 570);
    final padding = 43.w;
    final containerW = SizeConfig.screenWidth - 2 * padding;
    final containerH = containerW / contactDimensions.aspectRatio;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        key: key,
        width: containerW,
        height: containerH,
        child: Stack(
          children: [
            Container(
              width: containerW,
              height: containerW / boxDimensions.aspectRatio,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.rgba6303, AppColors.rgba73],
                  stops: [0.0, 1.0],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 41.h,
                  ),
                  Center(
                    child: customText(
                      text: S.of(context).weMadeParentingEasier,
                      font: 50.fSize,
                      height: 68.5.fSize / 50.fSize,
                      letterSpacing: 0.1 * 50.fSize,
                      fontWeight: FontWeight.w700,
                      color: AppColors.rgba28,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S
                                .of(context)
                                .weSimplifiesTheLearningDecisionAndAssistYouToGainBalanceInLife1,
                            style: TextStyle(
                              fontSize: 25.fSize,
                              fontWeight: FontWeight.w700,
                              height: 34.25.fSize / 50.fSize,
                              color: AppColors.rgba28,
                            ),
                          ),
                          TextSpan(
                            text: S
                                .of(context)
                                .theClearWayToTrackYourChildsStrengthsAndProvideTheSupportYouNeedAsAParent,
                            style: TextStyle(
                              fontSize: 25.fSize,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: AppColors.rgba28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 51.h,
                  ),
                ],
              ),
            ),
            Positioned(
              top:
                  (254 / contactDimensions.height).relativeToHeight(containerH),
              left: 25.w,
              right: 25.w,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _vidionPicandText(
                    imagePath: ImagePath.vision1,
                    text: S.of(context).receivePerformanceReportAfterLesson,
                  ),
                  _vidionPicandText(
                    imagePath: ImagePath.vision2,
                    text: S.of(context).childAssessmentParentTraining,
                  ),
                  _vidionPicandText(
                    imagePath: ImagePath.vision3,
                    text: S.of(context).freeMonthlySteamCraft,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _vidionPicandText({required String imagePath, required String text}) {
    const contactDimensions = OriginalDimension(
      width: 408,
      height: 552,
    );
    final containerw =
        SizeConfig.screenWidth * 0.28333; // Adjust for padding/spacer
    final containerH = containerw / contactDimensions.aspectRatio;

    return Container(
      padding: EdgeInsets.only(
          top: (57 / 552).relativeToHeight(containerH),
          left: 10.w,
          right: 10.w),
      width: containerw,
      height: containerH,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.w),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.4),
              offset: Offset(0, 0),
              blurRadius: 15,
              spreadRadius: 0)
        ],
        image: DecorationImage(
            image: AssetImage(
              imagePath,
            ),
            fit: BoxFit.cover),
      ),
      child: SizedBox(
        width: 372.w,
        child: customText(
          text: text,
          font: 30.fSize,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.1 * 30.fSize,
          height: 41.1.fSize / 30.fSize,
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _smallCircle() {
    return Container(
      width: 471.w,
      height: 471.w,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            transform: GradientRotation(
                202.66 * 3.1416 / 180), // Convert angle to radians
            colors: [
              Color.fromRGBO(128, 255, 232, 0.4),
              Color.fromRGBO(255, 241, 208, 0.4),
            ],
          ),
          shape: BoxShape.circle),
    );
  }

  Widget _bigCircle() {
    return Container(
      width: 793.17.w,
      height: 793.17.h,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.rgba6303, AppColors.rgba761.withOpacity(0.4)]),
          shape: BoxShape.circle),
    );
  }
}
