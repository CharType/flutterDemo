import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() {
  runApp(LogoApp());
}

class AnimationLogo extends AnimatedWidget {
  static final _opacityTween = Tween<double>(begin: 0.1,end:1.0);
  static final _sizeTween = Tween<double>(begin: 0.0,end:300);
  AnimationLogo({Key key,Animation<double> animation}) : super(key:key,listenable:animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}

class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 2000),vsync: this);
    animation = CurvedAnimation(parent: controller,curve: Curves.easeIn);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

//    animation = Tween(begin: 0.0,end: 300.0).animate(curve);
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return AnimationLogo(animation: animation);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

