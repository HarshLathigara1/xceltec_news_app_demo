import 'package:flutter/material.dart';
import 'package:untitled/constants/color_constants.dart';
import 'package:untitled/constants/common_constants.dart';



ThemeData lightTheme = ThemeData(
  colorScheme:  const ColorScheme.light(
    primary: ColorConstants.colorPrimary, //primary dark
    primaryVariant: ColorConstants.colorPrimary, //primary
    secondary: ColorConstants.colorAccent,
    secondaryVariant: ColorConstants.colorAccent,
    background: ColorConstants.colorCanvas,
    error: Colors.red,
    brightness: Brightness.light,
  ),
  primarySwatch: Colors.red,

  fontFamily: CommonConstants.FONT_Proxima_FAMILY_REGULAR,


);
