import 'package:navigator_demo/src/application/navigation/a_navigation_controller.dart';
import 'package:navigator_demo/src/application/navigation/b_navigation_controller.dart';
import 'package:navigator_demo/src/utility/scope_mixin.dart';
import 'package:flutter/widgets.dart';

class NavigationScope extends InheritedWidget with ScopeMixin {
  const NavigationScope({
    super.key,
    required this.aController,
    required this.bController,
    required super.child,
  });

  final ANavigationController aController;
  final BNavigationController bController;

  static ANavigationController ofA(BuildContext context) =>
      ScopeMixin.of<NavigationScope>(context).aController;

  static BNavigationController ofB(BuildContext context) =>
      ScopeMixin.of<NavigationScope>(context).bController;

  @override
  bool updateShouldNotify(NavigationScope oldWidget) => false;
}
