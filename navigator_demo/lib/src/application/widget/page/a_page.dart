import 'package:navigator_demo/src/application/navigation/a_navigation_controller.dart';
import 'package:navigator_demo/src/utility/build_context_extension.dart';
import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "A Page",
        ),
      ),
      body: Center(
        child: MaterialButton(
          child: const Text("To B"),
          onPressed: () => context.aNavigationController.pushNamed(
            routeName: ANavigationController.bPage,
          ),
        ),
      ),
    );
  }
}
