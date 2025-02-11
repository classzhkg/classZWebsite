import 'package:classz_web/view/screen/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en', ''); // Default locale is English

  // Function to switch the language
  void _switchLanguage() {
    setState(() {
      // Toggle between 'en' and 'zh'
      _locale = _locale.languageCode == 'en'
          ? const Locale('zh', '')
          : const Locale('en', '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('zh', ''), // Mandarin
      ],
      locale: _locale, // Dynamically set the locale
      localizationsDelegates:const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      home: LandingPage(
          onLanguageChange:
              _switchLanguage), // Pass language change function to LandingPage
    );
  }
}
