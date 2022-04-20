import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'toast_utils.dart';

var isShowLoading = true;

showLoading({String text = "加载中..."}) {
  isShowLoading = true;
  Future.delayed(Duration(seconds: 1), () {
    if (isShowLoading) {
      EasyLoading.show(status: text, dismissOnTap: false);
      Future.delayed(Duration(seconds: 8), () {
        if (isShowLoading && EasyLoading.isShow) {
          dismissLoading();
          showNormalToast('loadfailed_tost'.tr);
        }
      });
    }
  });
}

dismissLoading() {
  isShowLoading = false;
  if (EasyLoading.isShow) {
    EasyLoading.dismiss();
  }
}
