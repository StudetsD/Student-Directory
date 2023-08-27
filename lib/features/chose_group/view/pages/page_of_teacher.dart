import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

class PageOfTeacher extends StatelessWidget {
  const PageOfTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    var list = (ModalRoute.of(context)?.settings.arguments ?? "") as List;
    var teacher = list[0] as Teachers;
    var group = list[1];
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 60, bottom: 24),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white54,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/teachers', arguments: group);
                    },
                  ),
                  Text(
                    "Преподаватель",
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
                ],
              ),
            ),
            Container(
              height: 140,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: [ColorConstant.firstGradInMenu, ColorConstant.secondGradInMenu],
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                          image: AssetImage("assets/img_for_teachers/${teacher.img}"),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Flexible(
                    child: Text (
                      teacher.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'RobotoRegular',
                        shadows: [
                          Shadow(
                            //blurRadius: 3.0,
                            color: Colors.white,
                            offset: Offset(0, -3),
                          ),
                        ],
                        color: Colors.transparent,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              //
            ),
          ],
        ),
      ),
    );
  }
}