import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var _orange = const Color.fromRGBO(238, 113, 0, 1);
var _lightGrey = const Color.fromRGBO(173, 173, 173, 1);

var defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: _orange,
    primary: _orange,
    onPrimary: Colors.white,
    surface: Colors.white,
  ),
  fontFamily: GoogleFonts.inter().fontFamily,
  textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 32,
      letterSpacing: 0,
      color: Colors.black,
    ),
    headlineLarge: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      letterSpacing: 0,
      color: Colors.white,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 20,
      letterSpacing: 0,
      color: _lightGrey,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      letterSpacing: 0,
      color: _orange,
    ),
  ),
);

extension CustomColors on ColorScheme {
  Color get lightGrey => _lightGrey;
}
