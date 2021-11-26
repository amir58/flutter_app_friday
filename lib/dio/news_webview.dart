import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatefulWidget {
  String _url;

  NewsWebView(this._url);

  @override
  _NewsWebViewState createState() => _NewsWebViewState(_url);
}

class _NewsWebViewState extends State<NewsWebView> {
  String _url;

  _NewsWebViewState(this._url);

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: '$_url',
      ),
    );
  }
}
