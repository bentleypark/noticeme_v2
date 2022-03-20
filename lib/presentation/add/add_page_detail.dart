import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/add_detail_controller.dart';
import 'package:noticeme/controller/add_controller.dart';
import 'package:noticeme/widget/toolbar_text_button.dart';

class AddPageDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddController>(
        builder: (controller) => Scaffold(
            appBar: ToolbarWithTextBtn(false),
            backgroundColor: Colors.white,
            body: Container()));
  }
}
