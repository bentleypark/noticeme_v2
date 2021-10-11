import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/presentation/manage/empty_view.dart';
import 'package:noticeme/presentation/manage/manage_view.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

import 'notification_view.dart';

class Manage extends GetView<ManageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [NotificationView(),
          // getManageView()
        ],
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
