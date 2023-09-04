import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack9003f => BoxDecoration();
  static BoxDecoration get fillWhiteA70099 => BoxDecoration(
    color: ColorConstant.whiteA70099,
  );
  static BoxDecoration get outline => BoxDecoration(
    color: ColorConstant.whiteA70068,
  );
  static BoxDecoration get outlineWhiteA70099 => BoxDecoration(
    color: ColorConstant.whiteA70033,
    border: Border.all(
      color: ColorConstant.whiteA70099,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA700,
  );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50,
    ),
  );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
