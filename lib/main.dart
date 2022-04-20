import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:metamask_token/app_binding.dart';
import 'package:metamask_token/pages/account/account_page.dart';
import 'package:metamask_token/routes/routes.dart';
import 'package:metamask_token/utils/color_utils.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (_) => GetMaterialApp(
        theme: ThemeData(
          primaryColor: ColorUtil.themeColor(),
        ),
        initialRoute: Routes.initial,
        getPages: AppPages.pages,
        debugShowCheckedModeBanner: false,
        defaultTransition: Platform.isIOS ? Transition.cupertino : Transition.rightToLeft,
        home: AccountPage(),
        initialBinding: AppBinding(),
      ),
    );
  }
}