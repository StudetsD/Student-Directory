import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/app_export.dart';


class ButtonOfParamItem extends StatelessWidget {
  const ButtonOfParamItem({
    super.key,
    required this.height,
    required this.iconHeight,
    required this.text,
    required this.icon,
    required this.isButton,
    required this.item,
    required this.color,
    required this.textSize,
    required this.fontFamily
  });
  final double height;
  final double iconHeight;
  final String text;
  final String icon;
  final String isButton;
  final Items item;
  final Color color;
  final double textSize;
  final String fontFamily;

  @override
  Widget build(BuildContext context) {
    final leftMarginIcon = iconHeight < 35 ? (45 - iconHeight) / 2 : 0.0;
    final rightMarginIcon = iconHeight < 35 ? (65 - iconHeight) / 2 : 10.0;
    return Container(
        width: double.infinity,
        height: height,
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: MaterialButton(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: rightMarginIcon, left: leftMarginIcon),
                child: GestureDetector(
                    onTap: () {
                      if (isButton == 'disk') {
                        Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
                      }
                      else if (isButton.isNotEmpty && isButton != 'Информации о преподавателе нет') {
                        Navigator.pushNamed(context, '/teacher', arguments: StringConstants.listOfTeachers[isButton]);
                      }
                    },
                    child: SvgPicture.asset(
                      icon,
                      height: iconHeight,
                      color: ColorConstant.startScreenTextColor,
                    )
                ),
              ),
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: textSize,
                    color: ColorConstant.startScreenTextColor,
                  ),
                ),
              )
            ],
          ),
          onPressed: () {
            if (isButton == 'disk') {
              Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
            }
            else if (isButton.isNotEmpty && isButton != 'Информации о преподавателе нет') {
              Navigator.pushNamed(context, '/teacher', arguments: StringConstants.listOfTeachers[isButton]);
            }
          },
        )
    );
  }
}