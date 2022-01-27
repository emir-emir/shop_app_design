import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constant/theme/color.dart';

/// Created by Emirşah Erden
/// on 25 Ocak 2022
class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  var numOfItem = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          buildOutllineButton(
              icon: Icons.remove,
              press: () {
                if (numOfItem > 1) numOfItem--;
              }),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: Text(numOfItem.toString().padLeft(2, "0"),
                style: Theme.of(context).textTheme.headline6),
          ),
          buildOutllineButton(
              icon: Icons.add,
              press: () {
                numOfItem++;
              }),
        ],
      ),
    );
  }

  SizedBox buildOutllineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
