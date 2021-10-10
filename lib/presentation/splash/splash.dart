import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/splash_controller.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_WHITE.parseColor(),
      body:
          Container(child: GetBuilder<SplashController>(builder: (controller) {
        return Center(
            child:
            Image(image: AssetImage('images/splash_logo.png'))
        //     SvgPicture.asset(
        //   'images/splash_logo.svg',
        //   width: 55,
        //   height: 66,
        // )
        );
      })),
    );
  }
}
