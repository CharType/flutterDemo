import 'package:flutter/material.dart';
import 'package:flutter_douban_app/pages/profile/profile_content.dart';

class CQProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: CQProfileContent(),
    );
  }
}
