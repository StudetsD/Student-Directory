import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageGoogleDrive extends StatelessWidget {
  const PageGoogleDrive({super.key});

  @override
  Widget build(BuildContext context) {
    final url = (ModalRoute.of(context)?.settings.arguments ?? '') as String;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://drive.google.com/drive/folders/$url',
      ),
    );
  }
}