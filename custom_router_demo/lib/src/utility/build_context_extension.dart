import 'package:custom_router_demo/src/application/router/application_router_delegate.dart';
import 'package:custom_router_demo/src/application/widget/navigation_scope.dart';
import 'package:flutter/widgets.dart';

extension BuildContextExtension on BuildContext {
  ApplicationRouterDelegate get router => RouterScope.of(this);
}
