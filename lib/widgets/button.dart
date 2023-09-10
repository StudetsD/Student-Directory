import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {

  const CustomButton({
    super.key,
    required this.name,
    required this.group,
    required this.asset,
    required this.way,
  });

  final String name;
  final String group;
  final String asset;
  final String way;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.only(left: 18, right: 18, top: 15),
      height: 50,
      decoration: BoxDecoration(
        color: ColorConstant.startScreenButtonFon,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        child: Row(
            children:[
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, way, arguments: group);
                },
                icon: SvgPicture.asset(
                  asset,
                  color: ColorConstant.startScreenTextColor,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  fontFamily: "RobotoRegular",
                  color: ColorConstant.startScreenTextColor,
                ),
              ),
            ]
        ),
        onPressed: () {
          Navigator.pushNamed(context, way, arguments: group);
        },
      ),
    );
  }


}