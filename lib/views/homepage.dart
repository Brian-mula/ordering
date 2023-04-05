import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/views/widgets/custom_app_bar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomeAppBar(),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Search for",
              style: theme.textTheme.headlineLarge!
                  .copyWith(color: Colors.black87),
            ),
            Text(
              "Recipes",
              style: theme.textTheme.headlineLarge!
                  .copyWith(color: Colors.black87),
            )
          ],
        ),
      ),
    );
  }
}
