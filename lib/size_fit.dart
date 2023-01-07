import 'dart:ui';

class SizeFit {
  static late double rpx;
  static late double px;
  static void initialize({double standardSize = 750}) {
    double physicalWidth = window.physicalSize.width;
    double dpr = window.devicePixelRatio;
    double screenWidth = physicalWidth / dpr;

    double statusHeight = window.padding.top / dpr;

    rpx = screenWidth / standardSize;

    px = screenWidth / standardSize * 2;
    print('状态栏高度：$statusHeight');
  }

  static double toRpx(double size) {
    return rpx * size;
  }

  static double toPx(double size) {
    return px * size;
  }
}
