import 'package:custom_router_demo/src/utility/build_context_extension.dart';
import 'package:flutter/material.dart';

class AScreen extends StatelessWidget {
  const AScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "A Screen",
        ),
      ),
      body: Center(
        child: MaterialButton(
          child: const Text("To B"),
          onPressed: () => context.router.goToB(),
        ),
      ),
    );
  }
}
