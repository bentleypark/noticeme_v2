import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/presentation/manage/EmptyView.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class Manage extends GetView<ManageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [EmptyView()],
      ),
    );
  }
}
