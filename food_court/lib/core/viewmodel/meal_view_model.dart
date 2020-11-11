import 'package:food_court/core/Services/meal_request.dart';
import 'package:food_court/core/viewmodel/base_view_model.dart';

class CQMealViewModel extends BaseMealViewModel {

  CQMealViewModel(){
    CQMealRequest.getMealData().then((res){
      meals = res;
    });
  }
}