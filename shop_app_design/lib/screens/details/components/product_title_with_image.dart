import 'package:flutter/material.dart';
import 'package:shop_app/constant/theme/color.dart';
import 'package:shop_app/models/product_model.dart';

/// Created by Emirşah Erden
/// on 25 Ocak 2022

class ProductTitleWithImage extends StatelessWidget {
  final ProductModel product;

  const ProductTitleWithImage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // SizedBox(height: 2),
          Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Price\n"),
                      TextSpan(
                          text: "\$ ${product.price}",
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                flex: 6,
                child: Hero(
                  tag:
                      "${product.id}", //iconun hareketli şekilde çalışmasını sağlar
                  child: Image.asset(product.image, fit: BoxFit.fill),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
