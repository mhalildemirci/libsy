import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:libsy/screen/SplashScreen.dart';
//import 'package:libsy/screen/login_screen.dart';
import 'firebase_options.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:ui' as ui;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('tr'), // Turkish
        // Add more locales as needed
      ],
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        designSize: Size(375, 812),
        child: SplashScreen(),
      ),
    );
  }
}
