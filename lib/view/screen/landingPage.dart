import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/theme/app_colors.dart';
import 'package:classz_web/view/widgets/customSvg.dart';
import 'package:classz_web/view/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:classz_web/view/widgets/customImage.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _contactUsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _visionKey = GlobalKey();
  final GlobalKey _discoverKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _allfont(),
            SizedBox(
              height: 203,
            ),
            _vision(key: _visionKey),
            SizedBox(
              height: 203,
            ),
            _discover(key: _discoverKey),
            SizedBox(
              height: 203,
            ),
            _launch(),
            SizedBox(
              height: 203,
            ),
            _contact(key: _contactKey)
          ],
        ),
      ),
    );
  }

  Widget _contact({required GlobalKey key}) {
    return Container(
      key: key,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [AppColors.rgba63, AppColors.rgba73])),
      width: 1440.w,
      height: 1440.w.aspectHeight(1440.w, 424),
      child: Stack(
        children: [
          Positioned(
            top: 71,
            left: 91.w,
            bottom: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: "Anything in mind?\nChat with Us",
                    font: 40.fSize,
                    height: 54.8.fSize / 40.fSize,
                    color: AppColors.rgba28,
                    fontWeight: FontWeight.w700),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    customImage(
                        imagePath: ImagePath.qr, height: 141.w, width: 141.w),
                    SizedBox(
                      width: 23.67.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _iconText(
                            imagePath: ImagePath.whatsappSvg,
                            size: 32.w,
                            text: "+852 5211 8996"),
                        SizedBox(
                          height: 16.w,
                        ),
                        _iconText(
                            imagePath: ImagePath.mailSvg,
                            size: 21.w,
                            text: "classzhk@gmail.com")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 82.w,
            child: customImage(
                imagePath: ImagePath.phone2,
                height: 350.w.aspectHeight(373.w, 354),
                width: 373.w),
          ),
          Positioned(
            bottom: 0,
            right: 315.w,
            child: customImage(
                imagePath: ImagePath.phone1,
                height: 350.w.aspectHeight(373.w, 354),
                width: 350.w),
          ),
        ],
      ),
    );
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
        customText(
            text: text,
            font: 30.fSize,
            height: 35.fSize / 30.fSize,
            color: AppColors.rgba28)
      ],
    );
  }

  Widget _launch() {
    return Center(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
              text: "Stay Tuned\n",
              style: TextStyle(
                  fontSize: 60.fSize,
                  color: AppColors.rgba28,
                  fontWeight: FontWeight.w700),
            ),
            TextSpan(
              text: "To be Launched in late 2025.",
              style: TextStyle(
                  color: AppColors.rgba28,
                  fontSize: 60.fSize,
                  height: 1.5,
                  fontWeight: FontWeight.w700),
            )
          ])),
    );
  }

  Widget _discover({required GlobalKey key}) {
    return Column(
      key: key,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: customText(
              text: "Discover Our Platform",
              font: 60.fSize,
              height: 80.8.fSize / 60.fSize,
              color: AppColors.rgba28,
              letterSpacing: 0.1),
        ),
        SizedBox(
          height: 100,
        ),
        _discoverWidget1(),
        SizedBox(
          height: 100,
        ),
        _discoverWidget2(),
        SizedBox(
          height: 100,
        ),
        _discoverWidget3(),
      ],
    );
  }

  Widget _discoverWidget1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: 1440.w,
        height: 1440.w.aspectHeight(1440.w, 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: "Performance Insights",
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Receive brief performance reports on platform after each lesson to ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "track growth",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Know your child's ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "performance level",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: " in comparison to peer",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Make ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "confident, targeted",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: " learning decisions",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            customImage(
                imagePath: ImagePath.discover1,
                height: 601.w.aspectHeight(601.w, 500),
                width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _discoverWidget2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: 1440.w,
        height: 1440.w.aspectHeight(1440.w, 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: "Trainings & Activities",
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Access various child assessments, including ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "SEN screenings",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: " and ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "skill tests",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Join ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "expert-led workshops ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "focused on parenting to support your need",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Enjoy engaging family activities to create",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: " memorable experiences",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            customImage(
                imagePath: ImagePath.discover2,
                height: 601.w.aspectHeight(601.w, 500),
                width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _discoverWidget3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 98.5.w),
      child: SizedBox(
        width: 1440.w,
        height: 1440.w.aspectHeight(1440.w, 500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                    text: "Monthly STEAM Craft Kits",
                    font: 45.fSize,
                    color: AppColors.rgba28),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Receive a new STEAM craft kit",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: " delivered to your home ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: "every month, ",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "free of charge",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Spark creativity",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text:
                                    " with fun, interactive projects outside the classroom",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 566.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(
                          Icons.thumb_up_alt,
                          color: AppColors.rgba28,
                          size: 28.w,
                        ),
                      ),
                      SizedBox(
                          width: 8.w), // Add spacing between Icon and RichText
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Designed by",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: " child development experts",
                                style: TextStyle(
                                  fontSize: 25.fSize,
                                  height: 34.25.fSize / 25.fSize,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Restrict to a maximum number of lines
                          overflow: TextOverflow
                              .ellipsis, // Handle overflow with ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            customImage(
                imagePath: ImagePath.discover3,
                height: 601.w.aspectHeight(601.w, 500),
                width: 601.w)
          ],
        ),
      ),
    );
  }

  Widget _allfont() {
    return SizedBox(
      width: 1441.w,
      height: 1441.w.aspectHeight(1441.w, 911),
      child: Stack(
        children: [
          Positioned(
              top: 645.w.aspectHeight(645.w, 370),
              left: 645.w,
              child: _smallCircle()),
          Positioned(
              top: 885.w.aspectHeight(885.w, 48),
              left: 885.w,
              child: _bigCircle()),
          Positioned(left: 28.w, right: 54.w, top: 22, child: _headerSection()),
          Positioned(
              top: 67.w.aspectHeight(67.w, 292),
              left: 67.w,
              child: _openingText()),
          Positioned(
              top: 105.w.aspectHeight(105.w, 202),
              right: 105.w,
              child: customImage(
                  imagePath: ImagePath.iphone,
                  height: 323.w.aspectHeight(323.w, 598),
                  width: 323.w))
        ],
      ),
    );
  }

  Widget _headerSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customImage(
            imagePath: ImagePath.logo,
            height: 272.w.aspectHeight(272.w, 178),
            width: 272.w),
        InkWell(
            onTap: () {
              scrollToTarget(_visionKey);
            },
            child: customText(
                text: "Our Vision", font: 25.fSize, color: AppColors.rgba28)),
        InkWell(
            onTap: () {
              scrollToTarget(_discoverKey);
            },
            child: customText(
                text: "Features", font: 25.fSize, color: AppColors.rgba28)),
        customText(text: "English/繁", font: 25.fSize, color: AppColors.rgba28),
        InkWell(
            onTap: () {
              print("hi");
              scrollToTarget(_contactKey);
            },
            child: _contactUs())
      ],
    );
  }

  Widget _contactUs() {
    return Container(
      width: 206.w,
      height: 206.w.aspectHeight(206.w, 60),
      decoration: BoxDecoration(
          color: AppColors.rgba28, borderRadius: BorderRadius.circular(50)),
      child: Center(
          child: customText(
              text: "Contact Us",
              font: 25.fSize,
              textAlign: TextAlign.center,
              height: 1,
              fontWeight: FontWeight.w600,
              color: Colors.white)),
    );
  }

  Widget _openingText() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.zero,

          width: 728.w,
          //height: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                text:
                    "A Smarter Way to Make Learning Efficient           for Your Child",
                font: 65.fSize,
                fontWeight: FontWeight.w800, // Font weight 800 (Bold)
                color: Colors.black, // Text color (black)
                letterSpacing:
                    0.1, // Letter spacing in pixels (0.1em as per your design)
                //   wordSpacing: 2.0, // Word spacing in pixels
                height:
                    1.1, // Line height factor, controlling spacing between lines
                textAlign: TextAlign.left, // Align text to the left
                overflow:
                    TextOverflow.ellipsis, // Handle overflow with ellipsis
                maxLines:
                    3, // Limit text to 3 lines to prevent overflow beyond this
              ),
              SizedBox(
                height: 50,
              ),
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Designed with elite parents in mind, our platform assists you to make informed decisions about your child's extracurricular activities and their growth.\n\n",
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
                      text: "Learn by quality, not quantity.\n",
                      style: TextStyle(
                          fontSize: 31.fSize,
                          fontWeight: FontWeight.w700,
                          height: 42.47.fSize / 31.fSize,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _vision({required GlobalKey key}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 43.w),
      child: SizedBox(
        key: key,
        width: 1355.w,
        height: 1355.w.aspectHeight(1355.w, 806),
        child: Stack(
          children: [
            Container(
              width: 1355.w,
              height: 1355.w.aspectHeight(1355.w, 570),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.rgba63, AppColors.rgba73],
                    stops: [0.0, 1.0],
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 41,
                  ),
                  Center(
                    child: customText(
                        text: "We Made Parenting Easier.",
                        font: 50.fSize,
                        height: 68.5.fSize / 50.fSize,
                        letterSpacing: 0.1 * 50.fSize,
                        fontWeight: FontWeight.w700,
                        color: AppColors.rgba28),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "We simplify the learning decision and assist you to gain balance in life.\n",
                            style: TextStyle(
                                fontSize: 25.fSize,
                                fontWeight: FontWeight.w700,
                                height: 34.25.fSize / 50.fSize,
                                color: AppColors.rgba28),
                          ),
                          TextSpan(
                            text:
                                "The clear way to track your child’s strengths and provide the support you need as a parent.",
                            style: TextStyle(
                                fontSize: 25.fSize,
                                fontWeight: FontWeight.w700,
                                height: 1.5,
                                color: AppColors.rgba28),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 51,
                  ),
                ],
              ),
            ),
            Positioned(
                top: 273,
                left: 25.w,
                right: 25.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _vidionPicandText(
                        imagePath: ImagePath.vision1,
                        text: "Receive Performance Report after Lesson"),
                    _vidionPicandText(
                        imagePath: ImagePath.vision2,
                        text: "Child Assessment & Parent Training"),
                    _vidionPicandText(
                        imagePath: ImagePath.vision3,
                        text: "Free Monthly STEAM Craft")
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget _vidionPicandText({required String imagePath, required String text}) {
    return Container(
      padding: EdgeInsets.only(top: 57, left: 25.w, right: 25.w),
      width: 408.w,
      height: 408.w.aspectHeight(409.w, 552),
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(imagePath))),
      child: customText(
          text: text,
          font: 30.fSize,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.1 * 30.fSize,
          height: 41.1.fSize / 30.fSize,
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center),
    );
  }

  Widget _smallCircle() {
    return Container(
      width: 471.w,
      height: 471.w,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(
                202.66 * 3.1416 / 180), // Convert angle to radians
            colors: [
              Color.fromRGBO(128, 255, 232, 0.4), // rgba(128, 255, 232, 0.4)
              Color.fromRGBO(255, 241, 208, 0.4), // rgba(255, 241, 208, 0.4)
            ],
          ),
          shape: BoxShape.circle),
    );
  }

  Widget _bigCircle() {
    return Container(
      width: 793.17.w,
      height: 793.17.w,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [AppColors.rgba63, AppColors.rgba76]),
          shape: BoxShape.circle),
    );
  }
}
