import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insight/commonuser/casepage.dart';
import 'package:insight/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insight India',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        primaryIconTheme: IconThemeData(color: Colors.black),
      ),
      home: SplashScreenPage(),
    );
  }
}
