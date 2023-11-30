import 'package:go_router_demo/src/application_router.dart';
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
      routerConfig: router.router,
    );
  }
}
