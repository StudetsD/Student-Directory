import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class MenuPage extends StatelessWidget {
  const MenuPage(String s, {super.key});

  @override
  Widget build(BuildContext context ) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;

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
                  child: const Text('Расписание'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/schedule', arguments: group);
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Список предметов'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/lessons');
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Список группы'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/students');
                  },
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  child: const Text('Список преподавателей'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/teachers');
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