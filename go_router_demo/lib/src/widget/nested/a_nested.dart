import 'package:go_router/go_router.dart';
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
          onPressed: () => context.go("/b_nested"),
        ),
      ),
    );
  }
}
