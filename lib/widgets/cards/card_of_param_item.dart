import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/color_constant.dart';

class CardOfParamItem extends StatelessWidget {
  const CardOfParamItem({
    super.key,
    required this.text,
    required this.icon
  });
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstant.startScreenFon,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: SvgPicture.asset(
                icon,
                color: ColorConstant.startScreenTextColor,
              )
            ),
            Flexible(
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'RobotoRegular',
                  fontSize: 16,
                  color: ColorConstant.startScreenTextColor,
                ),
              ),
            )
          ],
        )
    );
  }
}