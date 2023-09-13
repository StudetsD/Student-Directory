import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ScheduleWebPage extends StatefulWidget {
  const ScheduleWebPage({super.key});

  @override
  State<ScheduleWebPage> createState() => _ScheduleWebPageState();
}

class _ScheduleWebPageState extends State<ScheduleWebPage> {

  @override
  Widget build(BuildContext context) {
    final url = (ModalRoute.of(context)?.settings.arguments ?? '') as String;

    return Scaffold(
      body:  WebviewScaffold(
        primary: false,
        url: "https://eservice.omsu.ru/schedule/#/schedule/$url",
        appBar: AppBar(
          toolbarHeight: 0,
        ),
      ),
    );
  }
}