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
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 24, top: 12),
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
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3, top: 3),
                child: Opacity(
                  opacity: 0.4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: COLOR_RED_BLUE.parseColor()),
                    width: 170,
                    height: 75,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: COLOR_RED_BLUE.parseColor()),
                width: 170,
                height: 75,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: SvgPicture.asset('images/bookmark.svg'),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 8, top: 5),
                        child: Opacity(
                          opacity: 0.9,
                          child: Container(
                            width: 24,
                            height: 12,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: COLOR_WHITE.parseColor()),
                            child: Text(
                              '999',
                              style: TextStyle(
                                  color: COLOR_RED_BLUE.parseColor(),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 12, top: 9),
                        child: Image(
                          image: AssetImage('images/blue_glove.png'),
                          width: 52,
                          height: 52,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only( top: 14),
                        child: Column(
                          children: [
                            Text(
                              'D-999',
                              style: TextStyle(
                                  color: COLOR_WHITE.parseColor(),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Text(
                                '가나다라마바사',
                                style: TextStyle(
                                    color: COLOR_WHITE.parseColor(),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
