import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeaturedProducts extends ConsumerStatefulWidget {
  const FeaturedProducts({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FeaturedProductsState();
}

class _FeaturedProductsState extends ConsumerState<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SizedBox(
        height: 190,
        child: ListView.builder(
            itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "Delicious Hot Dog",
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(color: Colors.black),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "\$6",
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(color: Colors.orange.shade600),
                            )
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.orange.shade700,
                          size: 30,
                        ))
                  ],
                )));
  }
}
