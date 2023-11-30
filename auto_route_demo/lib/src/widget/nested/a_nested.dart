import 'package:auto_route_demo/src/router/application_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ANested extends StatelessWidget {
  const ANested({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "A Nested",
        ),
      ),
      body: Center(
        child: MaterialButton(
          child: const Text("To B Nested"),
          onPressed: () => context.pushRoute(
            const BNestedRoute(),
          ),
        ),
      ),
    );
  }
}
