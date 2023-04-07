import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/models/products_model.dart';

class RecommendedProducts extends ConsumerStatefulWidget {
  const RecommendedProducts({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecommendedProductsState();
}

class _RecommendedProductsState extends ConsumerState<RecommendedProducts> {
  List<ProductsNodel> products = [
    ProductsNodel(
        title: "Hamburg",
        img:
            "https://cdn.pixabay.com/photo/2017/09/28/18/13/bread-2796393__340.jpg",
        price: 20,
        oldprice: 30,
        rating: ['1234', '4567', '7890', '4321', '7854']),
    ProductsNodel(
        title: "Chips",
        img:
            "https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__340.jpg",
        price: 20,
        oldprice: 30,
        rating: ['1234', '4567', '7890', '4321', '7854']),
    ProductsNodel(
        title: "Doughnuts",
        img:
            "https://cdn.pixabay.com/photo/2016/11/21/15/52/french-fries-1846083__340.jpg",
        price: 20,
        oldprice: 30,
        rating: ['1234', '4567', '7890', '4321', '7854']),
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
        height: 200,
        child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/product_details',
                        arguments: products[index]);
                  },
                  child: Container(
                    height: 200,
                    width: 140,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white),
                          child: Center(
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(products[index].img),
                              radius: 30,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(products[index].title,
                            style: theme.textTheme.bodyLarge),
                        const SizedBox(height: 20),
                        Text(products[index].price.toString(),
                            style: theme.textTheme.bodyLarge)
                      ],
                    ),
                  ),
                )));
  }
}
