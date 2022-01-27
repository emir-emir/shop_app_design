import 'package:flutter/material.dart';
import 'package:shop_app/constant/theme/color.dart';
import 'package:shop_app/models/product_model.dart';

/// Created by Emirşah Erden
/// on 25 Ocak 2022
class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
