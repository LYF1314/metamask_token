import 'package:flutter/widgets.dart';

/// 常用边距设置
class ViewUtil {
  ViewUtil._();

  static EdgeInsets padding(
      {double left = 0, double top = 0, double right = 0, double bottom = 0, double all = 0}) {
    if (all > 0){
      return margin(all: all);
    }
    return margin(left: left, right: right, top: top, bottom: bottom);
  }

  static EdgeInsets margin(
      {double left = 0, double top = 0, double right = 0, double bottom = 0, double all = 0}) {
    if (all > 0) {
      return EdgeInsets.all(all);
    }
    return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
  }

  static BorderRadius radius(
      {double topLeft = 0,
      double topRight = 0,
      double bottomLeft = 0,
      double bottomRight = 0,
      double all = 0}) {
    if (all > 0) {
      return BorderRadius.all(Radius.circular(all));
    }
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomLeft: Radius.circular(bottomLeft),
      bottomRight: Radius.circular(bottomRight),
    );
  }
}
