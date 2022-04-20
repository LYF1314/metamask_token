/// 页面跳转
// import 'dart:html';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

class URLSchemeUntils {
  static bool handleURLScheme(String urlScheme, {dynamic formObject}) {
    final url = Uri.parse(urlScheme);
    final secheme = url.scheme;
    final host = url.host;
    final paths = url.path.substring(1).split('/');
    final fragment = url.fragment;
    final query = url.queryParameters;
    final path = paths.length > 0 ? paths[0] : '';
    if (secheme == 'http' || secheme == 'https') {
      final url = query['url'];
      if (url != null && url.isEmpty == false) {
        openBrower(url);
        return true;
      }
    } else if (secheme == 'ntfchicken') {
      if (host == 'page') {
        if (path == 'web') {
          final url = query['url'];
          if (url != null && url.isEmpty == false) {
            // Get.toNamed(Routes.web, arguments: url);
            return true;
          }
        }
      }
    }
    return false;
  }

  //打开外部浏览器
  static openBrower(String url) async {
    final can = await canLaunch(url);
    if (can) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //拨打电话
  static call(String aaa) async {
    final url = 'tel:' + aaa;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //发送短信
  static message(String phone) async {
    final url = 'sms:$phone';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //打开外部应运用
  static openOtherApp(String url) async {
    /**
     * weixin://
     * alipays://
     */
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
// handleURLScheme:(NSString *)urlScheme from:(id)fromObject
}
