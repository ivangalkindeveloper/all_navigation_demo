import 'package:navigator_demo/src/application/navigation/navigation_controller.dart';
import 'package:navigator_demo/src/application/widget/nested/a_nested.dart';
import 'package:navigator_demo/src/application/widget/nested/b_nested.dart';
import 'package:flutter/material.dart';

class BNavigationController extends INavigationController {
  static const String aNested = "/a_nested";
  static const String bNested = "/b_nested";

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case aNested:
        return MaterialPageRoute(
          builder: (context) => const ANested(),
        );

      case bNested:
        return MaterialPageRoute(
          builder: (context) => const BNested(),
        );

      default:
        return null;
    }
  }
}
