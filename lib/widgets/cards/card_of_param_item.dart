import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CardOfParamItem extends StatelessWidget {
  CardOfParamItem({
    super.key,
    required this.text,
    required this.icon,
  });
  String text;
  String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 75,
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white60.withOpacity(0.5),
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    icon,
                  )
              ),
            ),
            Flexible(
              child: Text(
                text,
                style: const TextStyle(
                  fontFamily: 'RobotoBold',
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
    );
  }
}