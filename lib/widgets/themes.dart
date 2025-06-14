import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static var lightTheme;

  static ThemeData get lightThemeI(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: Theme.of(context).textTheme,
    ),
  );

  static ThemeData get lightThemeI(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
    ),
  );
}

