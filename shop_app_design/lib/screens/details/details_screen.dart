import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/constant/icons/icons.dart';
import 'package:shop_app/constant/theme/color.dart';
import 'package:shop_app/models/product_model.dart';
import 'package:shop_app/screens/details/components/body.dart';

/// Created by Emirşah Erden
/// on 24 Ocak 2022
class DetailsScreenPage extends StatelessWidget {
  static const String routeName = '/details';

  final ProductModel product;

  DetailsScreenPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(assetsBackIcon, color: Colors.white),
        onPressed: () => Get.back(),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            assetsSearchIcon,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            assetsCartIcon,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
