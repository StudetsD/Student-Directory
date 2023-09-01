import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';

class AppIconStyle {
  static Icon iconTopBack = Icon(
    Icons.arrow_back,
    color: ColorConstant.startScreenTextColor,
    shadows: const [
      Shadow(
        blurRadius: 3.0,
        color: Colors.black26,
        offset: Offset(0, 5),
      ),
    ],
  );
}