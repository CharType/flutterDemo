import 'package:flutter/material.dart';

class CQStarRating extends StatefulWidget {
  final double rating;
  final double maxRating;
  final int count;
  final double size;
  final Color unselectedColor;
  final Color selectColor;

  final Widget unselectedImage;
  final Widget selectedImage;
  CQStarRating({
        @required this.rating,
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
            Icon(Icons.star, color: selectColor, size: size);

  @override
  _CQStarRatingState createState() => _CQStarRatingState();
}

class _CQStarRatingState extends State<CQStarRating> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(mainAxisSize: MainAxisSize.min,children: buildUnselectedStar()),
        Row(mainAxisSize: MainAxisSize.min,children: buildSelectedStar(),)
      ],
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(widget.count, (index) {
      return widget.unselectedImage;
    });
  }

  List<Widget> buildSelectedStar(){
    // 1.创建stars
    List<Widget> stars = [];
    final star = widget.selectedImage;
    // 构建填充慢的star
    // 先求每颗星占的分数
    double oneValue = widget.maxRating / widget.count;
    // 求出一共有多少颗星需要填满
    int entirCount = (widget.rating / oneValue).floor();
    for (int i = 0;i < entirCount;i++) {
      stars.add(star);
    }

    // 构建后面需要填充的star
    double leftWidth = ((widget.rating / oneValue)  - entirCount) * widget.size;
    final halfStar = ClipRect(
        clipper: CQStarClipper(leftWidth),
        child: star
    );

    stars.add(halfStar);

    if (stars.length > widget.count) {
      return stars.sublist(0,widget.count);
    }

    return stars;
  }
}


class CQStarClipper extends CustomClipper<Rect> {
  double width;
  CQStarClipper(this.width);

  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(CQStarClipper oldClipper) {
    return oldClipper.width != this.width;
  }
}


