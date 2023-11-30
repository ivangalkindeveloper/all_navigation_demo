import 'package:navigator_demo/src/application/navigation/a_navigation_controller.dart';
import 'package:navigator_demo/src/application/navigation/b_navigation_controller.dart';
import 'package:navigator_demo/src/application/widget/navigation_scope.dart';
import 'package:flutter/widgets.dart';

extension BuildContextExtension on BuildContext {
  ANavigationController get aNavigationController => NavigationScope.ofA(this);
  BNavigationController get bNavigationController => NavigationScope.ofB(this);
}
