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
        title: const Text('WebView'),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () async {},
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () async {},
          ),
          IconButton(
            icon: const Icon(Icons.replay),
            onPressed: () {},
          ),
        ],
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://eservice.omsu.ru/schedule/#/schedule/group/$num',//https://eservice.omsu.ru/schedule/#/schedule/group/2600
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.next_plan, size: 32),
        onPressed: () async {},
      ),
    );
  }
}