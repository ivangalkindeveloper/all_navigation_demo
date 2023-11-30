import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  const BPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "B Page",
        ),
      ),
      body: child,
    );
  }
}
