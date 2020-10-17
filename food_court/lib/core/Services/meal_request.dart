import 'package:food_court/core/Services/http_request.dart';
import 'package:food_court/core/model/meal_model.dart';

class CQMealRequest {
  static Future<List<CQMealModel>> getMealData() async {
    final url = "/meal";
    final result = await HttpRequest.request(url);
    final mealArray = result['meal'];
    List<CQMealModel> meals = [];
    for (var json in mealArray) {
      meals.add(CQMealModel.fromJson(json));
    }
    return meals;
  }
}
