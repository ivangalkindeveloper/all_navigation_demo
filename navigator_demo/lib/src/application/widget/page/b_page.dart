import 'package:navigator_demo/src/application/navigation/b_navigation_controller.dart';
import 'package:navigator_demo/src/utility/build_context_extension.dart';
import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  const BPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final BNavigationController bNavigationController =
        context.bNavigationController;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "B Page",
        ),
      ),
      body: Navigator(
        key: bNavigationController.key,
        initialRoute: BNavigationController.aNested,
        onGenerateRoute: bNavigationController.onGenerateRoute,
      ),
    );
  }
}
