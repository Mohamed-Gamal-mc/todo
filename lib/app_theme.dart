import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Color(0xff5D9CEC);
  static const backgroundLight = Color(0xffDFECDB);
  static const backgroundDark = Color(0xff060E1E);
  static const green = Color(0xff61E757);
  static const red = Color(0xffEC4B4B);
  static const gray = Color(0xffC8C9CB);
  static const white = Color(0xffffffff);
  static const black = Colors.black87;

  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: backgroundLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primary,
      unselectedItemColor: gray,
      backgroundColor: white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: primary,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: black,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: white,
        shape: CircleBorder(side: BorderSide(width: 4, color: white))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ))),
  );
  static ThemeData darkTheme = ThemeData();
}
