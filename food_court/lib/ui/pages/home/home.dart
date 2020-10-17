
import 'package:flutter/material.dart';
import 'package:food_court/ui/pages/home/home_app_bar.dart';
import 'package:food_court/ui/pages/home/home_content.dart';
import 'package:food_court/ui/pages/home/home_drawer.dart';

class CQHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CQHomeAppBar(context),
      body: CQHomeContent(),
      drawer: CQHomeDrawer(),
    );
  }
}
