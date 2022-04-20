import 'package:get/get.dart';
import 'package:metamask_token/pages/account/account_logic.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountLogic());
  }
}
