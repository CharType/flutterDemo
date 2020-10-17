import 'package:flutter/material.dart';
import 'package:food_court/core/Services/json_parse.dart';
import 'package:food_court/core/model/category_model.dart';
import 'package:food_court/core/extension/int_extension.dart';
import 'package:food_court/ui/pages/home/home_category_item.dart';

class CQHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CQCategoryModel>>(
      future: CQJsonParse.getCategoryData(),
      builder: (ctx, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        if (snapshot.error != null)
          return Center(
            child: Text("请求失败"),
          );
        final categories = snapshot.data;
        return GridView.builder(
            padding: EdgeInsets.all(20),
            itemCount: categories.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20.px,
                mainAxisSpacing: 20.px,
                childAspectRatio: 1.5),
            itemBuilder: (ctx, index) {
              return CQHomeCategoryItem(categories[index]);
            });
      },
    );
  }
}
