import 'package:auto_route_demo/src/router/application_router.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
    required this.router,
  });

  final ApplicationRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(
        deepLinkBuilder: router.deepLinkBuilder,
      ),
    );
  }
}
