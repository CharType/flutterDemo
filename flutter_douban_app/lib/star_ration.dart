import 'package:flutter/material.dart';

class CQStarRating extends StatelessWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectColor;
  final Widget unselectedImage;
  final Widget selectedImage;
  CQStarRating(
      {@required this.rating,
      this.maxRating = 10,
      this.count = 5,
      this.size = 30,
      this.unselectedColor = const Color(0xffbbbbbb),
      this.selectColor = const Color(0xffff0000),
      Widget unselectedImage,
      Widget selectedImage})
      : unselectedImage = unselectedImage ??
            Icon(Icons.star_border, color: unselectedColor, size: size),
        selectedImage = selectedImage ??
            Icon(Icons.star_border, color: selectColor, size: size);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min,children: buildUnselectedStar()),
        Row(mainAxisSize: MainAxisSize.min,children: byildSelectedStar(),)
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(count, (index) {
      return unselectedImage;
    });
  }

  List<Widget> byildSelectedStar(){
    // 1.创建stars
    List<Widget> stars = [];
    final star = selectedImage;
    // 构建填充慢的star
    // 先求每颗星占的分数
    double oneValue = maxRating / count;
    // 求出一共有多少颗星需要填满
    int entirCount = (rating / oneValue).floor();
    for (int i = 0;i < entirCount;i++) {
      stars.add(star);
    }

    // 构建后面需要填充的star
    double leftWidth = (rating / oneValue  - entirCount) * size;
    final halfStar = ClipRect(
      clipper:CQStarClipper(leftWidth),
      child: star,
    );

    stars.add(halfStar);

    if (stars.length > count) {
      return stars.sublist(0,count);
    }

    return stars;
  }
}

class CQStarClipper extends CustomClipper<Rect> {
  double width;
  CQStarClipper(this.width);

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    throw Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(CQStarClipper oldClipper) {
    return oldClipper.width != this.width;
  }
}


