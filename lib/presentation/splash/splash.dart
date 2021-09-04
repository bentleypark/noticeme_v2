import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/splash_controller.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SPLASH_COLOR.parseColor(),
      body:
          Container(child: GetBuilder<SplashController>(builder: (controller) {
        return Center(
            child: WebsafeSvg.asset(
          'images/logo.svg',
          width: 177,
          height: 115,
        ));
      })),
    );
  }
}
