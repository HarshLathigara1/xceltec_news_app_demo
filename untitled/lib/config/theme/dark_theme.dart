import 'package:flutter/material.dart';
import 'package:untitled/constants/common_constants.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  backgroundColor: Colors.black,
  fontFamily: CommonConstants.FONT_FAMILY_REGULAR,
  // bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //   backgroundColor: Colors.black,
  //   unselectedItemColor: Colors.white,
  //   selectedItemColor: Colors.redAccent,
  //   elevation: 0,
  // ),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    color: Colors.black,
    elevation: 0,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  ),
);
