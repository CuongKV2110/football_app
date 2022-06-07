import 'package:flutter/material.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DescriptionScreen extends StatelessWidget {
  String title;
  String description;

  DescriptionScreen(this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: const TextStyle(color: AppColors.white),
          ),
        ),
        body: Card(
          child: ListTile(
            title: Text(description),
          ),
        ),
        /*body: const WebView(
          initialUrl: 'https://bandon.vn/blog',
          javascriptMode: JavascriptMode.unrestricted,
        ),*/
      ),
    );
  }
}
