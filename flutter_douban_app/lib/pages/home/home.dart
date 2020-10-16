

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_douban_app/pages/home/home_content.dart';

class CQHomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: CQHomeContent(),
    );
  }
}
