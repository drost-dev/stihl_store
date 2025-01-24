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
    onSurface: _lightGrey,
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
    titleLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      letterSpacing: 0,
      color: _orange,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      height: 10/14,
      letterSpacing: 0,
      color: Colors.black.withOpacity(0.85),
    ),
  ),
);

extension CustomColors on ColorScheme {
  Color get lightGrey => _lightGrey;
}
