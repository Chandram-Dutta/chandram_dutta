import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue[500],
    foregroundColor: Colors.black,
    elevation: 0,
  ),
  colorScheme: ColorScheme.dark().copyWith(
    primary: Colors.blue[500],
    secondary: Colors.black,
    secondaryVariant: Colors.white,
  ),
  textTheme: TextTheme(
    headline1: GoogleFonts.montserrat(),
    bodyText1: GoogleFonts.montserrat(),
  ),
);
