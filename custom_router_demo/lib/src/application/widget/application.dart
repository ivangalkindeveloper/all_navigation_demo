import 'package:custom_router_demo/src/application/router/application_router_information_provider.dart';
import 'package:custom_router_demo/src/application/router/application_router_information_parser.dart';
import 'package:custom_router_demo/src/utility/build_context_extension.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: context.router,
      routeInformationParser: ApplicationRouteInformationParser(),
      routeInformationProvider: ApplicationRouteInformationProvider(),
    );
  }
}
