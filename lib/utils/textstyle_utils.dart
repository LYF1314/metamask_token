import 'package:flutter/material.dart';

import 'color_utils.dart';

/// 常用边距设置
class TextStyleUtil {
  TextStyleUtil._();

  static TextStyle textStyle1([Color color = Colors.white, Color color1 = Colors.white]) {
    return TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textStyle2([Color color = Colors.white]) {
    return TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textStyle3([Color color = Colors.white]) {
    return TextStyle(
      color: color,
      fontSize: 15,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textStyle4([Color color = Colors.white]) {
    return TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textStyle5([Color color = Colors.white]) {
    return TextStyle(
      color: color,
      fontSize: 13,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle textStyle6([Color color = Colors.white]) {
    return TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    );
  }

  //导航栏标题
  static TextStyle appBarTitle() {
    return TextStyle(
      color: Color(0xFFeeeeee),
      fontSize: 17,
      fontWeight: FontWeight.w500,
    );
  }

  //正常数字
  static TextStyle numberStyle() {
    return TextStyle(
      color: Colors.white70,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    );
  }

  //特殊数字
  static TextStyle specialNumber() {
    return TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  //描述文本 -1
  static TextStyle descTextStyle() {
    return TextStyle(
      color: Color(0xFFeeeeee),
      fontSize: 14,
      fontWeight: FontWeight.w300,
    );
  }
  //描述文本 -2
  static TextStyle descTextBlack() {
    return TextStyle(
      color: Color(0xFF363636),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );
  }

  //带图标的按钮-白色
  static TextStyle iconTitleWhite() {
    return TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w500,
    );
  }
  //带图标的按钮-黑色
  static TextStyle iconTitleBlack() {
    return TextStyle(
      color: Colors.black,
      fontSize: 13,
      fontWeight: FontWeight.w500,
    );
  }

  //搜索框
  static TextStyle searchHolder() {
    return TextStyle(
      color: ColorUtil.placeHolderColor(),
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
  }

  //搜索框
  static TextStyle smallTextWhite() {
    return TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w300,
    );
  }
}
