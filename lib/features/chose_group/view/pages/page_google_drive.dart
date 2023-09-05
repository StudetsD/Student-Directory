import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class PageGoogleDrive extends StatefulWidget {
  const PageGoogleDrive({super.key});

  @override
  State<PageGoogleDrive> createState() => _PageGoogleDriveState();
}

class _PageGoogleDriveState extends State<PageGoogleDrive> {

  @override
  Widget build(BuildContext context) {
    final String url = (ModalRoute.of(context)?.settings.arguments ?? '') as String;
    return Scaffold(
      body:  WebviewScaffold(
        primary: false,
        url: "https://drive.google.com/drive/folders/$url",
        appBar: AppBar(
          toolbarHeight: 0,
        ),
      ),
    );
  }
}