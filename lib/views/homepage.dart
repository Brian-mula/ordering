import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ordering/widgets/custom_app_bar.dart';
import 'package:ordering/widgets/recommended_list.dart';
import 'package:ordering/widgets/tabsview.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomeAppBar(),
              const SizedBox(
                height: 30,
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
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    labelText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    focusColor: Colors.grey.shade300,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    fillColor: Colors.grey.shade600,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1.0, color: Colors.grey.shade300)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1.0, color: Colors.grey.shade300))),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Recommended",
                style: theme.textTheme.headlineMedium!
                    .copyWith(color: Colors.black87),
              ),
              const SizedBox(
                height: 20,
              ),
              const RecommendedProducts(),
              const SizedBox(
                height: 20,
              ),
              const TabssView()
            ],
          ),
        ),
      ),
    );
  }
}
