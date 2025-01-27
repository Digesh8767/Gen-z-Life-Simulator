import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customTextStyle {
  static TextStyle headline = TextStyle(
        fontSize: 18,
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
        // wordSpacing: 5.0
  );

}

class NormalText {
  static TextStyle normal = TextStyle(
    fontSize: 20,
    color: Colors.blueAccent,
      fontWeight: FontWeight.bold,
  );
}

class splashScreenText{
  static TextStyle splashScreen = TextStyle(
    fontSize: 20,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
  );
}

class HeadingText{
  static TextStyle bigText = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    color: Colors.blue,
    backgroundColor: Colors.transparent
  );

  static TextStyle smallText = TextStyle(
    fontSize: 25,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    color: Colors.blue
  );
}