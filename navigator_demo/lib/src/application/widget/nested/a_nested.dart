import 'package:navigator_demo/src/application/navigation/b_navigation_controller.dart';
import 'package:navigator_demo/src/utility/build_context_extension.dart';
import 'package:flutter/material.dart';

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
          onPressed: () => context.bNavigationController.pushNamed(
            routeName: BNavigationController.bNested,
          ),
        ),
      ),
    );
  }
}
