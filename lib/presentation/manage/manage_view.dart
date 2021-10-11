import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noticeme/controller/manage_controller.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class ManageView extends StatelessWidget {
  ManageView(this.controller);

  ManageController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 24, top: 55),
            child: Text(
              controller.title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
              padding: EdgeInsets.only(right: 24, top: 55),
              child: Container(
                height: 40,
                width: 40,
                child: FittedBox(
                  child: FloatingActionButton(
                    onPressed: () {},
                    tooltip: 'Filter',
                    child: Image(image: AssetImage('images/filter.png')),
                    elevation: 4.0,
                    backgroundColor: COLOR_WHITE.parseColor(),
                    foregroundColor: COLOR_GRAY01.parseColor(),
                  ),
                ),
              )),
        )
      ],
    );
  }
}
