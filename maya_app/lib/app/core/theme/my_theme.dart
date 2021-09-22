import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: const Color(0xFF2350D9),
      primaryColorLight: const Color(0xFF6481D9),
      primaryColorDark: const Color(0xFF16348C),
      primaryColorBrightness: Brightness.light,
      backgroundColor: const Color(0xFFffffff),
      scaffoldBackgroundColor: const Color(0xFFffffff),
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
