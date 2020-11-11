import 'package:flutter/cupertino.dart';

class CQFilterViewModel extends ChangeNotifier {
  // 五谷蛋白
  bool _isGlutenFree = false;
  // 有无乳糖
  bool _isLactoseFree = false;
  // 素食主义
  bool _isVeegetarian = false;
  // 严格素食主义
  bool _isVegan = false;

  bool get isGlutenFree => _isGlutenFree;
  bool get isLactoseFree => _isLactoseFree;
  bool get isVeegetarian => _isVeegetarian;
  bool get isVegan => _isVegan;

  set isGlutenFree(bool value) {
    _isGlutenFree = value;
    notifyListeners();
  }

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }

  set isVeegetarian(bool value) {
    _isVeegetarian = value;
    notifyListeners();
  }

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }
}