import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) =>
      ThemeData(

          fontFamily: GoogleFonts
              .roboto()
              .fontFamily,
          appBarTheme: AppBarTheme()
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(
        brightness: Brightness.dark,
          fontFamily: GoogleFonts
              .roboto()
              .fontFamily,
          appBarTheme: AppBarTheme()
      );
}