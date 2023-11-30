import 'package:custom_router_demo/src/application/router/application_router_delegate.dart';
import 'package:custom_router_demo/src/utility/scope_mixin.dart';
import 'package:flutter/widgets.dart';

class RouterScope extends InheritedWidget with ScopeMixin {
  const RouterScope({
    super.key,
    required this.delegate,
    required super.child,
  });

  final ApplicationRouterDelegate delegate;

  static ApplicationRouterDelegate of(BuildContext context) =>
      ScopeMixin.of<RouterScope>(context).delegate;

  @override
  bool updateShouldNotify(RouterScope oldWidget) => false;
}
