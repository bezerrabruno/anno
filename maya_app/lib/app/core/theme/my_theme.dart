import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      colorScheme: const ColorScheme(
        primary: Color(0xFF1470C8),
        primaryVariant: Color(0xFF2350D9),
        onPrimary: Color(0xFFFFFFFF),
        secondary: Color(0xFFF09F1A),
        secondaryVariant: Color(0xFFBD7C15),
        onSecondary: Color(0xFF000000),
        surface: Color(0xFF4073A3),
        onSurface: Color(0xFFFFFFFF),
        background: Color(0xFFFFFFFF),
        onBackground: Color(0xFF000000),
        error: Color(0xFFF00C00),
        onError: Color(0xFF000000),
        brightness: Brightness.light,
      ),
      textTheme: TextTheme(
        headline2: TextStyle(
          color: const Color(0xFFffffff),
          fontSize: 23.sp,
          fontWeight: FontWeight.w500,
        ),
        button: TextStyle(
          color: const Color(0xFFffffff),
          fontSize: 15.sp,
        ),
        bodyText1: TextStyle(
          color: const Color(0xFFffffff),
          fontSize: 18.sp,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: const Color(0xFF000000),
      primaryColorLight: const Color(0xFF2c2c2c),
      primaryColorDark: const Color(0xFF000000),
      primaryColorBrightness: Brightness.dark,
      backgroundColor: const Color(0xFFffffff),
      scaffoldBackgroundColor: const Color(0xFF555555),
      textTheme: TextTheme(
        headline2: TextStyle(
          color: const Color(0xFFffffff),
          fontSize: 23.sp,
          fontWeight: FontWeight.w500,
        ),
        button: TextStyle(
          color: const Color(0xFFffffff),
          fontSize: 15.sp,
        ),
        bodyText1: TextStyle(
          color: const Color(0xFFffffff),
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
