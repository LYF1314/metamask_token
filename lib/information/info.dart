import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

const AndroidKey = "461c430daec0f54acea839ecec2e53e8";
const iOSKey = "6df77cab8e678108bd3bba6a5b083182";
const double KMargin = 12;
const TwitterApiKey = "nivVKdH6Yxad34kXk3Wqj10t5";
const TwitterApiSecret = "S6bAXogVjUlPWtmGYVpXoS7vA1DgS3IfaGYxYFaRctb1npHOP2";
const TwitterToken = "AAAAAAAAAAAAAAAAAAAAAPwIbQEAAAAAa29yz7gngsux9emEAcrbAc9l3nA%3DO7OS3wTeBMJCaNlOyvNAjHKyfZkRi7u82gmKY3AkS8ispPiLiY";
const TwitterAppId = "23922940";

class Global {
  // 单例
  static Global instance = Global();
  // 屏幕信息
  static MediaQueryData mediaQueryData = MediaQueryData.fromWindow(window);
  static double screenWidth = mediaQueryData.size.width;
  static double screenHeight = mediaQueryData.size.height;
  static double paddingBottom = mediaQueryData.padding.bottom;
  static double paddingTop = mediaQueryData.padding.top;
  static double appBarHeight = AppBar().preferredSize.height;
  static double appBarWidth = AppBar().preferredSize.width;
  static double appStateHeight = mediaQueryData.padding.top;
  static double appNavHeight = appBarHeight + appStateHeight;
}

bool iOS = Platform.isIOS;
bool Android = Platform.isAndroid;

bool isLandspace(BuildContext context) {
  return (MediaQuery.of(context).size.width >
      MediaQuery.of(context).size.height);
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

// 枚举值转字符串
String enumToString<T>(T) {
  return T.toString().split(".").last;
}

//字符串转枚举值
T enumFromString<T>(Iterable<T> values, String typeStr) {
  return values.firstWhere((type) {
    return type.toString().split(".").last == typeStr;
  }, orElse: () {
    return values.first;
  });
}

// 枚举值转字符串
Color primaryColor(BuildContext context) {
  return Theme.of(context).primaryColor;
}

void launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

