import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          elevation: 1.5,
          margin: EdgeInsets.fromLTRB(12, 0, 12, 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 6, right: 6),
                child: GestureDetector(
                  onTap: controller.dismiss,
                  child: SvgPicture.asset('images/close.svg'),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: AutoSizeText(
                    '최대일곱자가능 바꾸는 날이에요',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 4, top: 8, bottom: 8),
                child: OutlinedButton(
                  onPressed: update,
                  child: Text('교체하기'),
                  style: OutlinedButton.styleFrom(
                    textStyle: TextStyle(
                        color: COLOR_GREEN_ORANGE.parseColor(),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
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