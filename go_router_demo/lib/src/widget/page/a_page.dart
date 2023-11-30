import 'package:go_router/go_router.dart';
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
          onPressed: () => context.go("/a_nested"),
        ),
      ),
    );
  }
}
