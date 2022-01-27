import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constant/theme/color.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/components/Item_card_page.dart';
import 'package:shop_app/screens/home/components/categories_page.dart';

/// Created by Emirşah Erden
/// on 23 Ocak 2022
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
        ),
        CategoriesPage(),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.75,
                  // container büyüklüğünü ayarlıyor
                  mainAxisSpacing: kDefaultPadding,
                  // containerler arasına yatay boşluk bırakıyor
                  crossAxisSpacing: kDefaultPadding,
                  // containerler arasına  dikey boşluk bırakıyor
                  crossAxisCount: 2),
              itemBuilder: (context, index) => ItemCardPage(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreenPage(
                                product: products[index],
                              ))))),
        ))
      ],
    );
  }
}
