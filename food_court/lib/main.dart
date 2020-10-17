import 'package:flutter/material.dart';
import 'package:food_court/core/router/router.dart';
import 'package:food_court/core/viewmodel/meal_view_model.dart';
import 'package:food_court/ui/shared/app_theme.dart';
import 'package:food_court/ui/shared/size_fit.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (ctx) => CQMealViewModel(),
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
