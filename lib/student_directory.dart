import 'package:flutter/material.dart';
import 'core/app_export.dart';
import 'router/router.dart';

class StudentDirectoryApp extends StatelessWidget {
  const StudentDirectoryApp({super.key});

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
