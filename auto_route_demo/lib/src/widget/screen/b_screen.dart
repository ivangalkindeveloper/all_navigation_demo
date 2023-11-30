import 'package:auto_route_demo/src/router/application_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BScreen extends StatelessWidget {
  const BScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        title: const Text("B Screen"),
      ),
      routes: const [
        ATabRoute(),
        BTabRoute(),
      ],
      bottomNavigationBuilder: (
        BuildContext context,
        TabsRouter tabsRouter,
      ) =>
          BottomNavigationBar(
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Text("A"),
            label: "A Tab",
          ),
          BottomNavigationBarItem(
            icon: Text("B"),
            label: "B Tab",
          ),
        ],
      ),
    );
  }
}
