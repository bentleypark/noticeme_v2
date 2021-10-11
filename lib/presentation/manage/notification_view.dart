import 'package:flutter/material.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        elevation: 1,
        margin: EdgeInsets.fromLTRB(8, 24, 8, 24),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 20, right: 8, bottom: 20),
            child: Icon(
              Icons.close,
              color: COLOR_GRAY01.parseColor(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, right: 12, bottom: 20),
            child: Text(
              '최대일곱자가능 바꾸는 날이에요',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          OutlinedButton(
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
                      borderRadius: BorderRadius.circular(10.0))))
        ]),
      ),
    );
  }

  update() {}
}
