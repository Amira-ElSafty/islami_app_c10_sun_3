import 'package:flutter/material.dart';

class MyTheme {
  /// colors , light mode , dark mode
  static Color blackColor = Color(0xff242424);
  static Color primaryLightColor = Color(0xffB7935F);
  static Color primaryDarkColor = Color(0xff141A2E);
  static Color whiteColor = Color(0xffffffff);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
    primaryColor: primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: blackColor),
        centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: blackColor),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: blackColor),
      titleSmall: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: blackColor),
    ),
  );

  static ThemeData darkMode = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: whiteColor),
        centerTitle: true),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: whiteColor),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: whiteColor),
      titleSmall: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w400, color: whiteColor),
    ),
  );
}
