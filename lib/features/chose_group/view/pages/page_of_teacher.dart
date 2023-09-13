import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

class PageOfTeacher extends StatelessWidget {
  const PageOfTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    var teacher = (ModalRoute.of(context)?.settings.arguments ?? "") as Teachers;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  IconButton(
                    icon: AppIconStyle.iconTopBack,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: AppIconStyle.iconTopSchedule,
                    onPressed: () {
                      Navigator.pushNamed(context, '/schedule', arguments: StringConstants.listOfCodeTeachers[teacher.name]);
                    },
                  ),
                  Text(
                    "Преподаватель",
                    textAlign: TextAlign.center,
                    style: AppStyle.textTopStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 140,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorConstant.menuBackgroundColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 100,
                          width: 100,
                          margin: const EdgeInsets.only(left: 10, right: 10),
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
                          child: Text (
                            teacher.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoRegular',
                              color: ColorConstant.startScreenTextColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text (
                            "Контактная информация",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoRegular',
                              color: ColorConstant.startScreenTextColor,
                            ),
                          ),
                        ),
                        Divider(
                          color: ColorConstant.startScreenTextColor,
                          thickness: 1,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SelectableText (
                              teacher.mail,
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'RobotoRegular',
                                color: ColorConstant.startScreenTextColor,
                                decorationColor: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text (
                            "Кафедра",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoRegular',
                              color: ColorConstant.startScreenTextColor,
                            ),
                          ),
                        ),
                        Divider(
                          color: ColorConstant.startScreenTextColor,
                          thickness: 1,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text (
                              teacher.department,
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'RobotoRegular',
                                color: ColorConstant.startScreenTextColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 25, right: 25),
                    child: Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Дисциплины",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'RobotoRegular',
                                color: ColorConstant.startScreenTextColor,
                              ),
                            )
                        ),
                        Divider(
                          color: ColorConstant.startScreenTextColor,
                          thickness: 1,
                        ),
                        for (var i = 0; i < teacher.items.length; i++) TextItem(title: teacher.items[i], index: i + 1,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class TextItem extends StatelessWidget {
  const TextItem({
    super.key,
    required this.title,
    required this.index,
  });

  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text (
          "$index. $title",
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'RobotoRegular',
            color: ColorConstant.startScreenTextColor,
          ),
        ),
      ),
    );
  }

}