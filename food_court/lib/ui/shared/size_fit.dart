

import 'dart:ui';

class CQSizeFit {
  // 1 基本信息
  static double physicalWidth;
  static double physicalHeight;
  static double screenWidth;
  static double screenHeight;
  static double dpr;
  static double statusHeight;
  static double rpx;
  static double px;
  static void initialize({double standarSize = 750}) {
    // 1.手机的物理分辨率
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    // 2.获取dpr 物理分辨率和像素点的比例
    dpr = window.devicePixelRatio;

    // 3 宽度和高度
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;
    // 4 计算rpx的大小
    statusHeight = window.padding.top / dpr;

    // 5.计算rpx的大小
    rpx = screenWidth / standarSize;
    px = screenWidth / standarSize * 2;

  }

  static double setRpx(double size) {
    return rpx * size;
  }

  static double setPx(double size) {
    return px * size;
  }
}