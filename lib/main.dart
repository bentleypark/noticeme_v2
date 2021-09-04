import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/resources/const.dart';
import 'package:noticeme/router/router.dart';

void main() {
  runApp(NoticeMeApp());
}

class NoticeMeApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: APP_NAME,
      debugShowCheckedModeBanner: false,
      getPages: routers(),
      initialRoute: Routers.SPLASH,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
