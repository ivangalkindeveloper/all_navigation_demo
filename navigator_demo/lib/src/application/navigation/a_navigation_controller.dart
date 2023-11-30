import 'package:navigator_demo/src/application/navigation/navigation_controller.dart';
import 'package:navigator_demo/src/application/widget/page/a_page.dart';
import 'package:navigator_demo/src/application/widget/page/b_page.dart';
import 'package:flutter/material.dart';

class ANavigationController extends INavigationController {
  static const String aPage = "/a_page";
  static const String bPage = "/b_page";

  @override
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case aPage:
        return MaterialPageRoute(
          builder: (context) => const APage(),
        );

      case bPage:
        return MaterialPageRoute(
          builder: (context) => const BPage(),
        );

      default:
        return null;
    }
  }
}
