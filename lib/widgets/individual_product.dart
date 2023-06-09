import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/models/products_model.dart';

class IndividualProduct extends ConsumerStatefulWidget {
  const IndividualProduct({super.key, required this.product});
  final ProductsNodel product;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _IndividualProductState();
}

class _IndividualProductState extends ConsumerState<IndividualProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(widget.product.img),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 40),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red.shade200,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(right: 40),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.access_time,
                    color: Colors.red.shade200,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
