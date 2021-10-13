import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 1,
        margin: EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 8, right: 6, top: 12, bottom: 12),
                child: Icon(
                  Icons.close,
                  color: COLOR_GRAY01.parseColor(),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(right: 8, top: 12, bottom: 12),
                  child: AutoSizeText(
                    '최대일곱자가능 바꾸는 날이에요',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 8, top: 12, bottom: 12),
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
                              borderRadius: BorderRadius.circular(10.0))))),
            ]),
      ),
    );
  }

  update() {}
}
