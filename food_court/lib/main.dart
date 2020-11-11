import 'package:flutter/material.dart';
import 'package:food_court/core/router/router.dart';
import 'package:food_court/core/viewmodel/favor_view_model.dart';
import 'package:food_court/core/viewmodel/fiter_view_model.dart';
import 'package:food_court/core/viewmodel/meal_view_model.dart';
import 'package:food_court/ui/shared/app_theme.dart';
import 'package:food_court/ui/shared/size_fit.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => CQFilterViewModel()),
      ChangeNotifierProxyProvider<CQFilterViewModel,CQMealViewModel>(
        create: (ctx) => CQMealViewModel(),
        update: (ctx,filterVM,mealVM) {
          mealVM.updateFilters(filterVM);
          return mealVM;
        },
      ),
      ChangeNotifierProxyProvider<CQFilterViewModel,CQFavorViewModel>(
        create: (ctx) => CQFavorViewModel(),
        update: (ctx,filterVM,favorVM) {
          favorVM.updateFilters(filterVM);
          return favorVM;
        },
      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 先对sizeFit进行初始化
    CQSizeFit.initialize();
    return MaterialApp(
      title: '美食广场',
      theme: CQAppTheme.norTheme,
      initialRoute: CQRouter.initialRoute,
      routes: CQRouter.routes,
      onGenerateRoute: CQRouter.generateRoute,
      onUnknownRoute: CQRouter.unknownRoute,
    );
  }
}
