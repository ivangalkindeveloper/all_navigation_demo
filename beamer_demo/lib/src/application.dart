import 'package:beamer_demo/src/application_router.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class Application extends StatelessWidget {
  const Application({
    super.key,
    required this.router,
  });

  final ApplicationRouter router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: router.delegate,
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: router.delegate,
      ),
    );
  }
}
