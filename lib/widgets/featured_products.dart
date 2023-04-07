import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/models/products_model.dart';

class FeaturedProducts extends ConsumerStatefulWidget {
  const FeaturedProducts({super.key, this.showAdd = true});
  final bool showAdd;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FeaturedProductsState();
}

class _FeaturedProductsState extends ConsumerState<FeaturedProducts> {
  List<ProductsNodel> featured = [
    ProductsNodel(
        title: "Delicious Hot Dog",
        img:
            "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706__340.jpg",
        price: 30,
        oldprice: 45,
        rating: ['1', '2', '3', '4', '5'],
        color: Colors.pink.shade200),
    ProductsNodel(
        title: "Cheese Pizza",
        img:
            "https://cdn.pixabay.com/photo/2015/07/12/14/26/coffee-842020__340.jpg",
        price: 10,
        oldprice: 15,
        rating: ['1', '2', '3'],
        color: Colors.blue.shade400),
    ProductsNodel(
        title: "Sweet cheese",
        img:
            "https://cdn.pixabay.com/photo/2018/10/14/18/29/meatloaf-3747129__340.jpg",
        price: 20,
        oldprice: 25,
        rating: [
          '1',
          '2',
          '3',
          '4',
        ],
        color: Colors.blue.shade200),
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
        height: 190,
        child: ListView.builder(
            itemCount: featured.length,
            itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: NetworkImage(featured[index].img),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                featured[index].title,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              RatingBar.builder(
                                initialRating:
                                    featured[index].rating.length.toDouble(),
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  size: 5,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$${featured[index].price.toString()}",
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(color: Colors.red.shade600),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "\$${featured[index].oldprice.toString()}",
                                    style: theme.textTheme.bodyMedium!.copyWith(
                                        color: Colors.black38,
                                        decoration: TextDecoration.lineThrough),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    widget.showAdd
                        ? Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.orange.shade700),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                          )
                        : Container()
                  ],
                )));
  }
}
