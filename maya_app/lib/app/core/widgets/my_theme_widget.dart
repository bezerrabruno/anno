import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTheme {
  ThemeData _light = ThemeData.light();
  ThemeData _dark = ThemeData.dark();

  ThemeData themeLight() {
    return _light.copyWith(
      primaryColor: const Color(0xFF094072),
      scaffoldBackgroundColor: Color.fromRGBO(215, 215, 217, 1),
      colorScheme: ColorScheme(
        primary: const Color(0xFF094072),
        primaryVariant: const Color(0xFF1B3059),
        onPrimary: const Color(0xFF466aa1),
        secondary: const Color(0xFF094072),
        secondaryVariant: const Color(0xFF094072),
        onSecondary: const Color(0xFF094072),
        brightness: Brightness.light,
        background: const Color(0xFF094072),
        onBackground: const Color(0xFF094072),
        error: const Color(0xFF094072),
        onError: const Color(0xFF094072),
        surface: const Color(0xFF094072),
        onSurface: const Color(0xFF094072),
      ),
      primaryTextTheme: TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
        headline2: TextStyle(
          fontSize: 32.sp,
          color: Color.fromRGBO(9, 64, 114, 1),
        ),
      ),
      appBarTheme: AppBarTheme(
        color: Color.fromRGBO(9, 64, 114, 1),
        titleTextStyle: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
          color: Color.fromRGBO(215, 215, 217, 1),
        ),
      ),
    );
  }

  ThemeData themeDark() {
    return _dark.copyWith(
        primaryColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
          titleTextStyle: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 32.sp,
            color: Colors.white,
          ),
        ));
  }
}
