import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class CardOfTeacher extends StatelessWidget{
  const CardOfTeacher ({
    super.key,
    required this.teacher,
    required this.group,
  });
  final Teachers teacher;
  final String group;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstant.menuBackgroundColor,
      ),
      child: MaterialButton(
        child: Row(
          children: [
            Container(
              height: 78,
              width: 78,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white70, width: 2),
                  image: DecorationImage(
                    image: AssetImage("assets/img_for_teachers/${teacher.img}"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            Flexible(
              child: Text(
                teacher.name,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.startScreenTextColor,
                ),
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/teacher', arguments: [teacher, group]);
        },
      ),
    );
  }
}