import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomeAppBar extends ConsumerWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black45,
            )),
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916__340.png"),
          radius: 12,
        )
      ],
    );
  }
}
