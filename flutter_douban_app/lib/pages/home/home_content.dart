
import 'package:flutter/material.dart';
import 'package:flutter_douban_app/Model/home_model.dart';
import 'package:flutter_douban_app/network/home_http_request.dart';

import 'home_movie_item.dart';

class CQHomeContent extends StatefulWidget {
  @override
  _CQHomeContentState createState() => _CQHomeContentState();
}

class _CQHomeContentState extends State<CQHomeContent> {
  final List<MovieItem> movies = [];
  @override
  void initState() {
    super.initState();
    HomeRequest.requestMovieList(0).then((res) {
      setState(() {
        print(res);
        movies.addAll(res);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:CQHomeMoveItem(),
    );
  }
}
