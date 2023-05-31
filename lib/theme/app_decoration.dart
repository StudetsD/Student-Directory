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
    boxShadow: [
      BoxShadow(
        color: ColorConstant.purple90026,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          30,
        ),
      ),
    ],
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

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
