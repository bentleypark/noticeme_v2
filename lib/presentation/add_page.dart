import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/add_controller.dart';
import 'package:noticeme/widget/toolbar_text_button.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddController>(builder: (controller) {
      return Scaffold(
          appBar: ToolbarWithTextBtn(),
          backgroundColor: Colors.white,
          body: Container());
    });
  }
}
