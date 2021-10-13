import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/resources/const.dart';
import 'package:noticeme/router/router.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: COLOR_GREEN_ORANGE.parseColor(), // navigation bar color
    statusBarColor: COLOR_GREEN_ORANGE.parseColor(), // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icon color
    systemNavigationBarIconBrightness: Brightness.dark, // color of navigation controls
  ));
  runApp(NoticeMeApp());
}

class NoticeMeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.white,
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      getPages: routers(),
      initialRoute: Routers.SPLASH,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
