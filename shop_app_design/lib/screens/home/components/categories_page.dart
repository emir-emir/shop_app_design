import 'package:flutter/material.dart';
// We need satefull widget for our categories
import 'package:get/get.dart';

import '../../../constant/theme/color.dart';

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];

  // By default our first item will be selected
  var selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          selectedIndex.value = index;
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex.value == index
                      ? kTextColor
                      : kTextLightColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
                //top padding 5
                height: 2,
                width: 30,
                color: selectedIndex.value == index
                    ? Colors.black
                    : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
