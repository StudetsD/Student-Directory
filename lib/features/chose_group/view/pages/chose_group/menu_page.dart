import 'package:applicate/widgets/button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context ) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                IconButton(
                  icon: AppIconStyle.iconTopBack,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                Text(
                    "Меню",
                    textAlign: TextAlign.center,
                    style: AppStyle.textTopStyle,
                  ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                height: 390,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConstant.menuBackgroundColor,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15, left: 30),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        group,
                        style: TextStyle(
                          color: ColorConstant.startScreenTextColor,
                          fontSize: 20,
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    CustomButton(
                      name: "Расписание",
                      group: group,
                      asset: "assets/images/img_bag.svg",
                      way: '/schedule',
                    ),
                    CustomButton(
                      name: "Список предметов",
                      group: group,
                      asset: "assets/images/img_location.svg",
                      way: '/lessons',
                    ),
                    CustomButton(
                      name: "Список преподавателей",
                      group: group,
                      asset: "assets/images/img_mail.svg",
                      way: '/teachers',
                    ),
                    CustomButton(
                      name: "Список группы",
                      group: group,
                      asset: "assets/images/Man.svg",
                      way: '/students',
                    ),
                    CustomButton(
                      name: "Вернуться к выбору группы",
                      group: group,
                      asset: "assets/icons/back.svg",
                      way: '/chose',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}