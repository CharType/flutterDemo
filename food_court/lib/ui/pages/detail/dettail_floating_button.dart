import 'package:flutter/material.dart';
import 'package:food_court/core/model/meal_model.dart';
import 'package:food_court/core/viewmodel/favor_view_model.dart';
import 'package:provider/provider.dart';

class CQDetailFloatingButton extends StatelessWidget {
  final CQMealModel _mealModel;
  CQDetailFloatingButton(this._mealModel);
  @override
  Widget build(BuildContext context) {
    return Consumer<CQFavorViewModel>(
      builder: (ctx,favorVM,child) {
        // 1. 判断是否是收藏状态
        final iconData = favorVM.isFavor(_mealModel) ? Icons.favorite : Icons.favorite_border;
        final iconColor = favorVM.isFavor(_mealModel) ? Colors.red : Colors.black;
        return FloatingActionButton(
          child: Icon(iconData,color: iconColor,),
          onPressed: (){
            favorVM.handleModel(_mealModel);
          },
        );
      },
    );
  }
}
