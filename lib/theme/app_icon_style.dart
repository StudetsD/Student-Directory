import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';
import 'package:flutter_svg/svg.dart';

class AppIconStyle {
  static SvgPicture iconTopBack = SvgPicture.asset(
    "assets/icons/back_top.svg",
    color: ColorConstant.startScreenTextColor,
  );

  static SvgPicture iconTopSchedule = SvgPicture.asset(
    "assets/images/img_bag.svg",
    color: ColorConstant.startScreenTextColor,
  );

  static SvgPicture iconPageTeacherSchedule = SvgPicture.asset(
    "assets/icons/teacher_schedule.svg",
    color: ColorConstant.startScreenTextColor,
  );
}