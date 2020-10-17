import 'package:flutter/material.dart';
import 'package:food_court/ui/pages/detail/detail.dart';
import 'package:food_court/ui/pages/main/main.dart';
import 'package:food_court/ui/pages/meal/meal.dart';

class CQRouter {
  static final String initialRoute = CQMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
    CQMainScreen.routeName: (ctx) => CQMainScreen(),
    CQMealScreen.routeName: (ctx) => CQMealScreen(),
    CQDetailScreen.routeName: (ctx) => CQDetailScreen(),
  };

  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
