import 'package:flutter_douban_app/Model/home_model.dart';
import 'package:flutter_douban_app/config/config.dart';
import 'package:flutter_douban_app/network/http_request.dart';

class HomeRequest {

  static Future<List<MovieItem>> requestMovieList(int start) async {
      // 1.构建url
      final movieURL = "${HttpConfig.baseUrl}/j/search_subjects?type=movie&tag=%E7%83%AD%E9%97%A8&sort=recommend&page_limit=${HomeConfig.movieCount}&page_start=$start";
      print(movieURL);
      // 2.发送网络请求获取结果
      final result = await HttpRequest.request(movieURL);
      final subjects = result["subjects"];

      // 3.将Map转成Model
      List<MovieItem> movies = [];
      for (var sub in subjects) {
        movies.add(MovieItem.fromMap(sub));
      }

      return movies;
  }
}
