import 'package:flutter/material.dart';
import 'package:shop_app/constant/theme/color.dart';

/// Created by Emirşah Erden
/// on 25 Ocak 2022
class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  ColorDot({this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
