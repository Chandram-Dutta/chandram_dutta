// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light().copyWith(
    primary: Colors.blue[500],
    secondary: Colors.black,
    secondaryVariant: Colors.white,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.grey[500],
    elevation: 0,
  ),
  scaffoldBackgroundColor: Colors.grey[500],
  textTheme: TextTheme(
    headline1: GoogleFonts.montserrat(),
    bodyText1: GoogleFonts.montserrat(),
  ),
);
