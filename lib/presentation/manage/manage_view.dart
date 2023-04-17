import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/data/model/user_consumable.dart';
import 'package:noticeme/presentation/manage/item_card_view.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class ManageWidget extends GetView<ManageController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24, top: 12),
                child: Text(
                  controller.title,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: COLOR_BLACK.parseColor()),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 24, top: 12, bottom: 24),
                child: Container(
                  height: 40,
                  width: 40,
                  child: FittedBox(
                    child: FloatingActionButton(
                      onPressed: () {},
                      tooltip: 'Filter',
                      child: Image(image: AssetImage('images/filter.png')),
                      elevation: 2.0,
                      backgroundColor: COLOR_WHITE.parseColor(),
                      foregroundColor: COLOR_GRAY01.parseColor(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            right: 10,
            bottom: 150,
            left: 10,
          ),
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            primary: false,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / getChildAspectRatio()),
            // Generate 100 widgets that display their index in the List.
            children: List.generate(
              24,
              (index) {
                return ItemCardView(
                  UserConsumable.short(
                    '주방 고무장갑',
                    'blue_glove',
                    'yellow',
                    [
                      UserConsumableChild(),
                      UserConsumableChild(),
                      // UserConsumableChild()
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  double getChildAspectRatio() {
    if (Platform.isAndroid) {
      return 4;
    } else {
      return 5;
    }
  }
}
