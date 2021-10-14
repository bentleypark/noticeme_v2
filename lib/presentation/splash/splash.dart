import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/splash_controller.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class Splash extends StatelessWidget {

  Splash() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: COLOR_GREEN_ORANGE.parseColor(), // navigation bar color
      statusBarColor: COLOR_GREEN_ORANGE.parseColor(), // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icon color
      systemNavigationBarIconBrightness: Brightness.dark, // color of navigation controls
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_GREEN_ORANGE.parseColor(),
      body: Container(
        child: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (controller) {
            return Center(
                child: Image(image: AssetImage('images/splash_logo.png')));
          },
        ),
      ),
    );
  }
}
