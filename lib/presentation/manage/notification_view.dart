import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/presentation/manage/notification_controller.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NotificationController>(builder: (controller) {
      return Visibility(
        visible: controller.isVisible,
        child: Card(
          elevation: 1,
          margin: EdgeInsets.fromLTRB(18, 0, 18, 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, right: 6),
                child: GestureDetector(
                  onTap: controller.dismiss,
                  child: Icon(
                    Icons.close,
                    color: COLOR_GRAY01.parseColor(),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: AutoSizeText(
                    '최대일곱자가능 바꾸는 날이에요',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 8, top: 14, bottom: 14),
                child: OutlinedButton(
                  onPressed: update,
                  child: Text('교체하기'),
                  style: OutlinedButton.styleFrom(
                    textStyle: TextStyle(
                        color: COLOR_GREEN_ORANGE.parseColor(),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                    side: BorderSide(
                        color: COLOR_GREEN_ORANGE.parseColor(), width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  update() {}
}
