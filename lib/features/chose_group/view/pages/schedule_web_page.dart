import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ScheduleWebPage extends StatelessWidget {
  const ScheduleWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    final group = (ModalRoute.of(context)?.settings.arguments ?? '') as String;
    String? num = StringConstants.listOfCodeGroups[group];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://eservice.omsu.ru/schedule/#/schedule/group/$num',
      ),
    );
  }
}