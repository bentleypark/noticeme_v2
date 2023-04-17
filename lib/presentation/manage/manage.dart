import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/presentation/manage/empty_view.dart';
import 'package:noticeme/presentation/manage/manage_view.dart';
import 'notification_view.dart';

class ManagePage extends GetView<ManageController> {
  ManagePage() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, // status bar color
      systemNavigationBarColor: Colors.white, // navigation bar color
      statusBarIconBrightness: Brightness.dark, // status bar icon color
      systemNavigationBarIconBrightness:
          Brightness.dark, // color of navigation controls
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.isEmpty
          ? Stack(
              children: [EmptyView()],
            )
          : SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [NotificationView(), ManageWidget()],
                  ),
                ),
              ),
            ),
    );
  }
}
