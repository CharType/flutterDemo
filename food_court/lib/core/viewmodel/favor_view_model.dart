import 'package:food_court/core/model/meal_model.dart';
import 'package:food_court/core/viewmodel/base_view_model.dart';

class CQFavorViewModel extends BaseMealViewModel {
  void addMeal(CQMealModel meal) {
    originMeals.add(meal);
    notifyListeners();
  }

  void removeMeal(CQMealModel meal) {
    originMeals.remove(meal);
    notifyListeners();
  }

  void handleModel(CQMealModel meal) {
    if (isFavor(meal)) {
      removeMeal(meal);
    } else {
      addMeal(meal);
    }
  }

  bool isFavor(CQMealModel meal) {
    return originMeals.contains(meal);
  }

}