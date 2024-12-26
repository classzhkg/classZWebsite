import 'package:classz_web/utils/app_utils.dart';
import 'package:classz_web/view/screen/landingPage.dart';
import 'package:flutter/material.dart';
// import 'dart:ui_web' as ui_web;

void main() {
  // ui_web.debugEmulateFlutterTesterEnvironment = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
