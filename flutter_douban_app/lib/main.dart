import 'package:flutter/material.dart';
import 'package:flutter_douban_app/star_ration.dart';
//import 'package:flutter_douban_app/widgets/star_ration.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('豆瓣APP'),
            ),
            body: Center(
              child: CQtest()
            )));
  }
}

class CQtest extends StatefulWidget {
  @override
  _CQtestState createState() => _CQtestState();
}

class _CQtestState extends State<CQtest> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
          Icon(
            Icons.star_border,
            color: Colors.red,
            size: 30,
          ),
          Icon(
            Icons.star_border,
            color: Colors.red,
            size: 30,
          ),
          Icon(
            Icons.star_border,
            color: Colors.red,
            size: 30,
          ),
          Icon(
            Icons.star_border,
            color: Colors.red,
            size: 30,
          ),
          Icon(
            Icons.star_border,
            color: Colors.red,
            size: 30,
          ),
        ]),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 30,
            ),
          ],
        ),
      ],
    );
  }
}
