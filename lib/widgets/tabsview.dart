import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabssView extends ConsumerStatefulWidget {
  const TabssView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabssViewState();
}

class _TabssViewState extends ConsumerState<TabssView> {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(
        text: "FAVORITE",
      ),
      const Tab(
        text: "COMBOS",
      ),
      const Tab(
        text: "FAVORITE",
      ),
      const Tab(
        text: "RECOMMENDED",
      )
    ];
    final tabsViews = [
      const Text("Favorite"),
      const Text("Combos"),
      const Text("Favorite"),
      const Text("Recommnded"),
    ];
    return DefaultTabController(
        length: 4,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 78,
                child: AppBar(
                  elevation: 0.0,
                  backgroundColor: Colors.white,
                  bottom: TabBar(
                      labelColor: Colors.black87,
                      isScrollable: true,
                      tabs: tabs),
                ),
              ),
              SizedBox(
                height: 190,
                child: TabBarView(children: tabsViews),
              )
            ],
          ),
        ));
  }
}
