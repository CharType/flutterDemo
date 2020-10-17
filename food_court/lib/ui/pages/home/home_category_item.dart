import 'package:flutter/material.dart';
import 'package:food_court/core/model/category_model.dart';
import 'package:food_court/core/extension/int_extension.dart';
import 'package:food_court/core/model/meal_model.dart';
import 'package:food_court/ui/pages/meal/meal.dart';

class CQHomeCategoryItem extends StatelessWidget {
  final CQCategoryModel _category;
  CQHomeCategoryItem(this._category);
  
  @override
  Widget build(BuildContext context) {
    final bgColor = _category.cColor;
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12.px),
          gradient: LinearGradient(
            colors: [
              bgColor.withOpacity(.5),
              bgColor
            ]
          )
        ),
        alignment: Alignment.center,
        child: Text(
          _category.title,
          style: Theme.of(context).textTheme.display2.copyWith(
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).pushNamed(CQMealScreen.routeName,arguments: _category);
      },
    );
  }
}
