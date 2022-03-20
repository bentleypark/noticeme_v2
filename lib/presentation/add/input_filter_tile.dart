import 'package:flutter/material.dart';
import 'package:noticeme/resources/colors.dart';
import 'package:noticeme/utils/ex_fuctions.dart';

class InputFilterTile extends StatelessWidget {
  InputFilterTile(this.title);

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Chip(
        backgroundColor: INPUT_FILTER_TILE_COLOR.parseColor(),
        // selected: true,
        // selectedColor: INPUT_FILTER_TILE_COLOR.parseColor(),
        label: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
