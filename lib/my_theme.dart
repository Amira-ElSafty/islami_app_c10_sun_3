import 'package:flutter/material.dart';

class MyTheme {
  /// colors , light mode , dark mode
  static Color blackColor = Color(0xff242424);
  static Color primaryLightColor = Color(0xffB7935F);
  static Color whiteColor = Color(0xffffffff);
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
}
