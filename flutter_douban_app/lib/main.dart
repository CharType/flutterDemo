import 'package:flutter/material.dart';
import 'package:flutter_douban_app/pages/main/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,
            splashColor: Colors.transparent,
//            highlightColor: Colors.transparent
        ),
        home: Scaffold(body: Center(child: CQMainPage())));
  }
}
