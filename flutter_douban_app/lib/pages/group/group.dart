import 'package:flutter/material.dart';

import 'group_content.dart';

class CQGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小组"),
      ),
      body: CQGroupContent(),
    );
  }
}
