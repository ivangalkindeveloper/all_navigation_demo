import 'package:custom_router_demo/src/application/router/application_router_state.dart';
import 'package:custom_router_demo/src/application/router/application_router_transition_delegate.dart';
import 'package:custom_router_demo/src/application/widget/screen/a_screen.dart';
import 'package:custom_router_demo/src/application/widget/screen/b_screen.dart';
import 'package:flutter/material.dart';

class ApplicationRouterDelegate extends RouterDelegate<ApplicationRouterConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  bool _isB = false;

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  ApplicationRouterConfig? get currentConfiguration => ApplicationRouterConfig(
        isB: _isB,
      );

  @override
  Future<void> setNewRoutePath(
    ApplicationRouterConfig configuration,
  ) async {
    _isB = configuration.isB;
  }

  void goToB() {
    _isB = true;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      transitionDelegate: ApplicationRouterTransitionDelegate(),
      pages: [
        const MaterialPage(
          child: AScreen(),
        ),
        if (_isB == true)
          const MaterialPage(
            child: BScreen(),
          ),
      ],
      onPopPage: (
        Route route,
        dynamic result,
      ) {
        if (route.didPop(result) == false) {
          return false;
        }

        if (_isB) {
          _isB = false;
          notifyListeners();
          return true;
        }

        return false;
      },
    );
  }
}
