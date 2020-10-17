import 'package:flutter/material.dart';
import 'package:food_court/core/Services/meal_request.dart';
import 'package:food_court/core/model/meal_model.dart';

class CQMealViewModel extends ChangeNotifier {
  List<CQMealModel> _meals = [];
  List<CQMealModel> get meals {
    return _meals;
  }

  CQMealViewModel(){
    CQMealRequest.getMealData().then((res){
      _meals = res;
      notifyListeners();
    });
  }
}