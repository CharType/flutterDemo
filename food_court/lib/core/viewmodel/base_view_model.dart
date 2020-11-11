import 'package:flutter/cupertino.dart';
import 'package:food_court/core/model/meal_model.dart';
import 'package:food_court/core/viewmodel/fiter_view_model.dart';

class BaseMealViewModel extends ChangeNotifier {
  List<CQMealModel> _meals = [];

  CQFilterViewModel _filterVM;

  void updateFilters(CQFilterViewModel filterVM) {
    _filterVM = filterVM;
  }

  List<CQMealModel> get meals {
    return _meals.where((meal) {
      if (_filterVM.isGlutenFree && !meal.isGlutenFree) return false;
      if (_filterVM.isVeegetarian && !meal.isVegetarian) return false;
      if (_filterVM.isVegan && !meal.isVegan) return false;
      if (_filterVM.isLactoseFree && !meal.isLactoseFree) return false;
      return true;
    }).toList();
  }

  List<CQMealModel> get originMeals {
    return _meals;
  }

 set meals(List<CQMealModel> value) {
    _meals = value;
    notifyListeners();
 }

}