import 'package:flutter/material.dart';

class ProductsNodel {
  String title;
  String img;
  int price;
  List<String> rating;
  int oldprice;
  Color? color;

  ProductsNodel(
      {required this.title,
      required this.img,
      required this.price,
      required this.oldprice,
      required this.rating,
      required this.color});
}
