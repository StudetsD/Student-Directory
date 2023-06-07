import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

class ListOfGroup extends StatelessWidget {

  const ListOfGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 60, left: 28),
              child: Text(
                "Студенты",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant.colorText,
                  fontSize: 25,
                  fontFamily: 'RobotoBold',
                  fontWeight: FontWeight.w900,
                  shadows: const [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black26,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }

}