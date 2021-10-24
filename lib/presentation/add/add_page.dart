import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:noticeme/controller/add_controller.dart';
import 'package:noticeme/presentation/add/input_filter_tile.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';
import 'package:noticeme/widget/toolbar_text_button.dart';

class AddPage extends StatelessWidget {
  final _debouncer = Debouncer(milliseconds: 500);

  String inputText;
  var selectedText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddController>(builder: (controller) {
      return Scaffold(
        appBar: ToolbarWithTextBtn(false),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 32,
          ),
          child: Stack(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('images/word_bubble.png'),
                      width: 25,
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12,
                      ),
                      child: Text(
                        '어떤 항목을\n추가하실 건가요?',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  child: TextField(
                    controller: selectedText,
                    autofocus: true,
                    maxLength: 7,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(
                      //       color: HOME_SCREEN_TEXT_COLOR.parseColor(),
                      //       width: 1.0),
                      // ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: COLOR_GREEN_ORANGE.parseColor(), width: 1.0),
                      ),
                      // labelText: '소모품명?',
                      // labelStyle: TextStyle(
                      //   color: HOME_SCREEN_TEXT_COLOR.parseColor(),
                      // ),
                      hintText: 'ex) 에어컨 필터',
                      hintStyle: TextStyle(
                        color: TEXT_FILED_HINT_COLOR.parseColor(),
                      ),
                    ),
                    onChanged: (string) {
                      _debouncer.run(() {
                        print(string);
                        if (string.isNotEmpty) {
                          controller.fetchFilteredList(string);
                        }
                      });
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 24, left: 10),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      'images/arrow_next.svg',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 70,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.filteredList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: InputFilterTile(controller.filteredList[index]),
                        onTap: () {
                          selectedText.value = TextEditingValue(
                              text: controller.filteredList[index]);
                          selectedText.selection = TextSelection.fromPosition(TextPosition(offset: controller.filteredList[index].length));
                        },
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

class Debouncer {
  final int milliseconds;
  VoidCallback action;
  Timer _timer;

  Debouncer({this.milliseconds});

  run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
