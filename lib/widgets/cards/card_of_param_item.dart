import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/app_export.dart';


class CardOfParamItem extends StatelessWidget {
  CardOfParamItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isButton,
    required this.item,
  });
  String text;
  String icon;
  bool isButton;
  Items item;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 75,
        margin: const EdgeInsets.only(left: 20, right: 20, top: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstant.paramOfItemColor,
        ),
        child: MaterialButton(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {
                      if (isButton) {
                        Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
                      }
                    },
                    icon: SvgPicture.asset(
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