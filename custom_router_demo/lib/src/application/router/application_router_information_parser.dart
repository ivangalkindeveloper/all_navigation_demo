import 'package:custom_router_demo/src/application/router/application_router_state.dart';
import 'package:flutter/widgets.dart';

class ApplicationRouteInformationParser
    extends RouteInformationParser<ApplicationRouterConfig> {
  @override
  Future<ApplicationRouterConfig> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final List<String> pathSegments = routeInformation.uri.pathSegments;
    if (pathSegments.contains("b_screen")) {
      return const ApplicationRouterConfig(
        isB: true,
      );
    }

    return const ApplicationRouterConfig(
      isB: false,
    );
  }

  @override
  RouteInformation? restoreRouteInformation(
    ApplicationRouterConfig configuration,
  ) {
    if (configuration.isB) {
      return RouteInformation(
        uri: Uri.parse("/b_screen"),
      );
    }

    return RouteInformation(
      uri: Uri.parse("/"),
    );
  }
}
