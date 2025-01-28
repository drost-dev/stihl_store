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
    headlineSmall: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      letterSpacing: 0,
      height: 20/14,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      letterSpacing: 0,
      color: _orange,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      height: 14/14,
      letterSpacing: 0,
      color: _orange,
    ),
    bodyLarge: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 7,
      height: 7/14,
      letterSpacing: 0,
      color: Colors.black,
    ),
    bodySmall: const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 5,
      height: 5/10,
      letterSpacing: 0,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      height: 10/14,
      letterSpacing: 0,
      color: Colors.black.withOpacity(0.85),
    ),
    labelSmall: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 10,
      height: 10/14,
      letterSpacing: 0,
      color: Colors.black,
    ),
  ),
);

extension CustomColors on ColorScheme {
  Color get lightGrey => _lightGrey;
}
