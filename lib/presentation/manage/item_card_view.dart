import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:noticeme/data/model/user_consumable.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class ItemCardView extends StatelessWidget {
  ItemCardView(this.userConsumable);

  final UserConsumable userConsumable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(),
      child: Stack(
        children: [
          Visibility(
            visible: userConsumable.isGroup(),
            child: Padding(
              padding: EdgeInsets.only(left: 3, top: 3),
              child: Opacity(
                opacity: 0.4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: userConsumable.findColor()),
                  width: MediaQuery.of(context).size.width / 2.2,
                  height: 75,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: userConsumable.findColor()),
            width: MediaQuery.of(context).size.width / 2.2,
            height: 75,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: SvgPicture.asset('images/bookmark.svg'),
                ),
                userConsumable.child.length > 1
                    ? Align(
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
                                userConsumable.child.length.toString(),
                                style: TextStyle(
                                    color: userConsumable.findColor(),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12, top: 9),
                    child: Image(
                      image:
                          AssetImage('images/' + userConsumable.icon + '.png'),
                      width: 52,
                      height: 52,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 14, left: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'D-999',
                          style: TextStyle(
                              color: COLOR_WHITE.parseColor(),
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          userConsumable.title,
                          style: TextStyle(
                              color: COLOR_WHITE.parseColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
