import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/app_export.dart';


class CardOfParamItem extends StatelessWidget {
  const CardOfParamItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isButton,
    required this.item,
    required this.color
  });
  final String text;
  final String icon;
  final bool isButton;
  final Items item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 75,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: MaterialButton(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                    onTap: () {
                      if (isButton) {
                        Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
                      }
                    },
                    child: SvgPicture.asset(
                      icon,
                      color: ColorConstant.startScreenTextColor,
                    )
                ),
              ),
              Flexible(
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'RobotoBold',
                    fontSize: 18,
                    color: ColorConstant.startScreenTextColor,
                  ),
                ),
              )
            ],
          ),
          onPressed: () {
            if (isButton) {
              Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
            }
          },
        )
    );
  }
}