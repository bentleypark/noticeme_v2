import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/presentation/manage/empty_view.dart';
import 'package:noticeme/presentation/manage/manage_view.dart';

import 'notification_view.dart';

class Manage extends GetView<ManageController> {
  Manage() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white70, // status bar color
        systemNavigationBarColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NotificationView(),
            getManageView(),
          ],
        ),
      ),
    );
  }

  Widget getManageView() {
    if (controller.isEmpty) {
      return EmptyView();
    } else {
      return ManageView(controller);
    }
  }
}
