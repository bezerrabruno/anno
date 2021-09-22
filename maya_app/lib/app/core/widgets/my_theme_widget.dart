import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: const Color(0xFF3772A6),
      primaryColorLight: const Color(0xFF466aa1),
      primaryColorDark: const Color(0xFF094072),
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
