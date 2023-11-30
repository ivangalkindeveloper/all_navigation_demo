import 'package:flutter/widgets.dart';

abstract class INavigationController {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  Route<dynamic>? onGenerateRoute(
    RouteSettings settings,
  ) =>
      null;

  Future<void> pushNamed({
    required String routeName,
    dynamic arguments,
  }) =>
      Navigator.pushNamed<void>(
        key.currentContext!,
        routeName,
        arguments: arguments,
      );

  Future<void> pushReplacementNamed({
    required String routeName,
    dynamic arguments,
  }) =>
      Navigator.pushReplacementNamed<void, void>(
        key.currentContext!,
        routeName,
        arguments: arguments,
      );

  Future<void> pushNamedAndRemoveUntil({
    required String routeName,
    dynamic arguments,
  }) =>
      Navigator.pushNamedAndRemoveUntil<void>(
        key.currentContext!,
        routeName,
        (route) => false,
        arguments: arguments,
      );

  void pop<T>({
    dynamic result,
  }) {
    if (Navigator.canPop(key.currentContext!) == false) {
      return;
    }

    return Navigator.pop<T>(
      key.currentContext!,
      result,
    );
  }

  void popUntil() => Navigator.popUntil(
        key.currentContext!,
        (route) => route.isFirst,
      );
}
