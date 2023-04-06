import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecommendedProducts extends ConsumerStatefulWidget {
  const RecommendedProducts({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecommendedProductsState();
}

class _RecommendedProductsState extends ConsumerState<RecommendedProducts> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
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
                        child: const Center(
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn.pixabay.com/photo/2016/02/16/07/39/pizza-1202775__340.jpg"),
                            radius: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                )));
  }
}
