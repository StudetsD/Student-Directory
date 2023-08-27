import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../widgets/cards/card_of_param_item.dart';
import '../view.dart';


class PageOfItem extends StatelessWidget {
  const PageOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    var item = (ModalRoute.of(context)?.settings.arguments ?? "") as Items;
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/lessons', arguments: item.groups[0]);
                        },
                      ),
                      Text(
                        "Предмет",
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
                    margin: const EdgeInsets.only(left: 30, bottom: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ReductionName(item.name),
                      style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'RobotoBold',
                        fontWeight: FontWeight.w700,
                      ),
                    )
                ),
                CardOfParamItem(text: 'Преподаватель: \nФамилия Имя Отчество', icon: "assets/icons/teacher.svg",),
                CardOfParamItem(text: 'Вид аттестации: ${item.mark}', icon: "assets/icons/type_of_attestation.svg",),
                CardOfParamItem(text: 'Длительность: ${FormMessage(item.semestr)}', icon: "assets/icons/calendar.svg",),
                Container(
                    width: double.infinity,
                    height: 75,
                    margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [ColorConstant.firstGradInMenu, ColorConstant.secondGradInMenu],
                      ),
                    ),
                    child: MaterialButton(
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
                                },
                                icon: SvgPicture.asset(
                                  "assets/icons/semester.svg",
                                )
                            ),
                          ),
                          const Text(
                            "Полезные материалы",
                            style: TextStyle(
                              fontFamily: 'RobotoBold',
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/disk', arguments: StringConstants.listOfUrl[item.name]);
                      },
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String ReductionName(String name) {
    if (StringConstants.listOfReductionItemsForItemPage[name] == null) {
      return name;
    }
    else {
      return StringConstants.listOfReductionItemsForItemPage[name]!;
    }
  }

  String FormMessage(List semestr) {
    var size = semestr.length;
    if (size == 1) {
      return "$size семестр\n(${semestr.first})";
    }
    else if (size > 1 && size <= 4) {
      return "$size семестра\n(c ${semestr.first} по ${semestr.last})";
    }
    else {
      return "$size семестров\n(c ${semestr.first} по ${semestr.last})";
    }
  }
}