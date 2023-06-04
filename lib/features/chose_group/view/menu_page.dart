import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../../../core/app_export.dart';

class MenuPage extends StatelessWidget {
  const MenuPage(String s, {super.key});

  @override
  Widget build(BuildContext context ) {
    final group = (ModalRoute.of(context)?.settings.arguments ?? '') as String;

    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(left: 50, right: 50),
          width: double.maxFinite,
          height: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Меню",
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoRomanBold34.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.37,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: Text('Расписание ${group.toString()}'),
                  onPressed: () {
                    //j
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Список предметов'),
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Список группы'),
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Список преподавателей'),
                  onPressed: () {
                    //Navigator.pop(context);
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Вернуться к выбору группы'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}