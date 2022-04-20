import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:metamask_token/utils/view_utils.dart';

import 'account_logic.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<AccountLogic>();
    final state = Get.find<AccountLogic>().state;
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: ViewUtil.padding(left: 20, right: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    child: Image.asset("assets/images/metamask.jpg", width: 40, height: 40,),
                    onPressed: (){
                      logic.connect(Wallet.metamask);
                    }
                ),
                Text(
                  logic.metamask.value, //iOSFlutter.openUrlString.value,
                  textAlign: TextAlign.left,
                  maxLines: 10,
                  style: const TextStyle(
                    color: Colors.black, // 颜色
                    fontSize: 18, // 大小
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    child: Image.asset("assets/images/twitter.jpg", width: 40, height: 40,),
                    onPressed: (){
                      logic.twitterLogin();
                    }
                ),
                Text(
                  logic.authToken.value,
                  textAlign: TextAlign.left,
                  maxLines: 10,
                  style: const TextStyle(
                    color: Colors.black, // 颜色
                    fontSize: 18, // 大小
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
