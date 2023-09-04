import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';

class AppStyle {
  static TextStyle textTopStyle = TextStyle (
    color: ColorConstant.startScreenTextColor,
    fontSize: 28,
    fontFamily: 'RobotoBlack',
    fontWeight: FontWeight.w900,
  );

  static TextStyle txtRobotoRomanBold34 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      34,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );

  static TextStyle txtRobotoRomanCondensedMedium17 = TextStyle(
    color: ColorConstant.chosePageTextColor,
    fontSize: 17,
    fontFamily: 'RobotoBlack',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtRobotoRegular16 = TextStyle(
    color: ColorConstant.blueGray400,
    fontSize: getFontSize(
      16,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle txtRobotoRomanSemiBold28 = TextStyle(
    color: ColorConstant.blue700,
    fontSize: getFontSize(
      28,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
  );

  static TextStyle txtRobotoRegular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
}