import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/app_export.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context ) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;

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
                  "Меню",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.colorText,
                    fontSize: 25,
                    fontFamily: 'RobotoBold',
                    fontWeight: FontWeight.w900,
                  ),
                ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        //_removeGroup();
                        Navigator.pushNamed(context, '/chose');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

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
                  //_removeGroup();
                  Navigator.pushNamed(context, '/chose');
                },
              ),
            ),
          ],
        ),*/
    );
  }
}

/*Future<void> _removeGroup() async {
  var prefs = await SharedPreferences.getInstance();
  prefs.setString("group", "none");
}*/