
import 'package:get/get.dart';

import 'package:metamask_token/pages/account/account_page.dart';

abstract class Routes {
  static const initial = '/';
}

// 2.注册路由表：
abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => AccountPage(),
    ),
  ];
}
