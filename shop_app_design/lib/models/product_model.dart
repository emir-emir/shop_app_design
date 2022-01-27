import 'package:flutter/material.dart';
import 'package:shop_app/constant/images/images.dart';

class ProductModel {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  ProductModel({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<ProductModel> products = [
  ProductModel(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: assetsBag_1Images,
      color: Color(0xFF3D82AE)),
  ProductModel(
      id: 2,
      title: "Belt Bag",
      price: 235,
      size: 13,
      description: dummyText,
      image: assetsBag_2Images,
      color: Color(0xFFD3A984)),
  ProductModel(
      id: 3,
      title: "Hang Top",
      price: 236,
      size: 14,
      description: dummyText,
      image: assetsBag_3Images,
      color: Color(0xFF989493)),
  ProductModel(
      id: 4,
      title: "Old Fashion",
      price: 237,
      size: 15,
      description: dummyText,
      image: assetsBag_4Images,
      color: Color(0xFFE6B398)),
  ProductModel(
      id: 5,
      title: "Office Code",
      price: 238,
      size: 16,
      description: dummyText,
      image: assetsBag_5Images,
      color: Color(0xFFFB7883)),
  ProductModel(
    id: 6,
    title: "Office Code",
    price: 239,
    size: 17,
    description: dummyText,
    image: assetsBag_6Images,
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
