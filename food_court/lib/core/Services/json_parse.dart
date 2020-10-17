import 'dart:convert';
import 'package:flutter/services.dart';

class CQJsonParse {
  static Future<List<CQCategoryModel>> getCategoryData() async {
    // 1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    // 2.将jsonString转成Map/List
    final result =  json.decode(jsonString);

    // 3.将Map中的内容转成一个个对象
    final resultList = result["category"];
    List<CQCategoryModel> categories = [];
    for (var json in resultList) {
      categories.add(CQCategoryModel.fromJson(json));
    }

    return categories;
  }
}