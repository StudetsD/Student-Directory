import 'package:flutter/material.dart';
import 'core/app_export.dart';
import 'router/router.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

class StudentDirectoryApp extends StatefulWidget {
  const StudentDirectoryApp({super.key});

  @override
  State<StudentDirectoryApp> createState() => _StudentDirectoryAppState();
}

class _StudentDirectoryAppState extends State<StudentDirectoryApp> {

  @override
  void initState() {
    super.initState();
    setHighRefresh();
  }

  Future<void> setHighRefresh() async {
    await FlutterDisplayMode.setHighRefreshRate();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Справочник студента',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(scaffoldBackgroundColor: ColorConstant.startScreenFon),
      routes: routes,
    );
  }
}
