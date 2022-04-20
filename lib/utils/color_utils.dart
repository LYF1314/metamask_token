import 'dart:ui';

import 'package:flutter/material.dart';

/// #AAAAAA 类型颜色解析
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

/// 常用边距设置
class ColorUtil {
  ColorUtil._();

  var Colors1 = <int>[0xffb6b4a7, 0xffccbb84, 0xffbfc9ad, 0xff747e61, 0xff363e25];
  var Colors5 = <int>[0xffcecfb0, 0xffd8c8b3, 0xffa18db0, 0xff77608e, 0xff443459];
  var Colors10 = <int>[0xffcfe3ed, 0xff97d6f3, 0xff8aa2c4, 0xff5872a5, 0xff364a88];
  var Colors20 = <int>[0xfff2c98b, 0xffe0ab81, 0xff93786a, 0xff6a4d31, 0xff462d25];
  var Colors50 = <int>[0xffcec7d9, 0xff7c81a4, 0xff99bfb2, 0xff527a72, 0xff496b61];
  var Colors100 = <int>[0xfff6acb9, 0xffd4606d, 0xffe94136, 0xffc93649, 0xffbd0e2b];

  //主题色
  static Color themeColor() {
    return Colors.lightGreen;
  }

  //主题色
  static Color alipayColor() {
    return Color(0xff3479f7);
  }

  //灰色背景
  static Color grayBgColor() {
    return Color(0xff969696);
  }

  //灰色背景
  static Color placeHolderColor() {
    return Color(0xffc0c0c0);
  }

  //控制器背景
  static Color vcBgColor() {
    return Color(0xfff6f6f6);
  }

  //阴影背景
  static Color shadowBgColor() {
    return Color(0xffeeeeee);
  }

  //菜单背景
  static Color menuBgColor() {
    return Color(0xffcecfb0);
  }
}