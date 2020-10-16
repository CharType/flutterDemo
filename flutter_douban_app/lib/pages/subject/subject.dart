import 'package:flutter/material.dart';
import 'package:flutter_douban_app/pages/subject/subject_content.dart';

class CQSubjectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: CQSubjectContent(),
    );
  }
}
