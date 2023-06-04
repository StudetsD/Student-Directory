import 'package:flutter/material.dart';
import 'router/router.dart';
import 'theme/theme.dart';

class StudentDirectoryApp extends StatelessWidget {
  const StudentDirectoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudentDirectory',
      debugShowCheckedModeBanner: false,
      //theme: darkTheme,
      initialRoute: '/',
      routes: routes,
    );
  }
}