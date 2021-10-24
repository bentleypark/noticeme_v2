import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:noticeme/router/router.dart';

class ToolbarWithTextBtn extends StatelessWidget with PreferredSizeWidget {
  ToolbarWithTextBtn(this.textBtnVisibleYn);

  final bool textBtnVisibleYn;

  @override
  Size get preferredSize => Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Padding(
        padding: EdgeInsets.only(left: 24, top: 12, right: 24, bottom: 48),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Get.offNamed(Routers.HOME);
                },
                child: SvgPicture.asset('images/back.svg'),
              ),
            ),
            Visibility(
              visible: textBtnVisibleYn,
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    '저장',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
