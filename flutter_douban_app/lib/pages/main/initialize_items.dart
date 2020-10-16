

import 'package:flutter/cupertino.dart';
import 'package:flutter_douban_app/pages/group/group.dart';
import 'package:flutter_douban_app/pages/home/home.dart';
import 'package:flutter_douban_app/pages/main/bottom_bar_item.dart';
import 'package:flutter_douban_app/pages/mall/mall.dart';
import 'package:flutter_douban_app/pages/profile/profile.dart';
import 'package:flutter_douban_app/pages/subject/subject.dart';


List<CQBottomBarItem> items = [
  CQBottomBarItem("home","首页"),
  CQBottomBarItem("subject","书影音"),
  CQBottomBarItem("group","小组"),
  CQBottomBarItem("mall","市集"),
  CQBottomBarItem("profile","我的"),
];

List<Widget> pages = [
  CQHomePage(),
  CQSubjectPage(),
  CQGroupPage(),
  CQMallPage(),
  CQProfilePage()
];