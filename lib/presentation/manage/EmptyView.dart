import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/eyes.png')),
              Padding(
                  padding: EdgeInsets.only(bottom: 7, top: 10),
                  child: Text(
                    '아무 것도 없어요!',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  )),
              Text(
                '필요한 항목을 입력하시면\n교체 시기를 알려드려요!',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: SvgPicture.asset('images/tool_tip.svg'),
          ),
        )
      ],
    );
  }
}
