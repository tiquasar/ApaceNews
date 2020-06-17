import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';

class ArticleView extends StatefulWidget {

  final String postUrl;
  ArticleView({@required this.postUrl});

  @override
  _ArticleViewState createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {

  final Completer<WebViewController> _controller = Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Apace",
              style:
              TextStyle(color: Colors.blue.shade100, fontWeight: FontWeight.w800,letterSpacing:1,fontSize: 24,fontFamily: 'Montserrat'),
            ),
            Text(
              "News",
              style: TextStyle(color: Colors.green.shade600, fontWeight: FontWeight.w800,letterSpacing:1,fontSize: 24,fontFamily: 'Montserrat'),
            )
          ],
        ),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),

          )],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WebView(
          initialUrl:  widget.postUrl,
          onWebViewCreated: (WebViewController webViewController){
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
