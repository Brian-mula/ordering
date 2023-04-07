import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/models/products_model.dart';
import 'package:ordering/providers/product_provider.dart';
import 'package:ordering/widgets/individual_product.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductsNodel;
    final productProvider = ref.read(productsProvider);
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black54,
                    )),
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  child: badges.Badge(
                    badgeContent: Text(
                      "1",
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red.shade500),
                        child: const Center(
                            child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ))),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  Text(
                    product.title.toUpperCase(),
                    style: theme.textTheme.headlineLarge!.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IndividualProduct(
              product: product,
            ),
            const SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "\$${product.price}",
                  style: theme.textTheme.headlineLarge!
                      .copyWith(color: Colors.black54),
                ),
              ),
              Container(
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.red.shade400),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                productProvider.checkQuantity(false);
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.red.shade400,
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            productProvider.quantity.toString(),
                            style: theme.textTheme.headlineMedium!
                                .copyWith(color: Colors.red.shade400),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          IconButton(
                              onPressed: () {
                                productProvider.checkQuantity(true);
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.red.shade400,
                              )),
                        ],
                      ),
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 20,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Add to cart",
                          style: theme.textTheme.bodyMedium!
                              .copyWith(color: Colors.white),
                        ))
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
