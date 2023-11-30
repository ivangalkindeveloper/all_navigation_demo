import 'package:navigator_demo/src/application/navigation/a_navigation_controller.dart';
import 'package:navigator_demo/src/utility/build_context_extension.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ANavigationController aNavigationController =
        context.aNavigationController;

    return MaterialApp(
      navigatorKey: aNavigationController.key,
      initialRoute: ANavigationController.aPage,
      onGenerateRoute: aNavigationController.onGenerateRoute,
    );
  }
}
