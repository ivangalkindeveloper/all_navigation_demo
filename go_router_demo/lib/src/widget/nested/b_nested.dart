import 'package:flutter/material.dart';

class BNested extends StatelessWidget {
  const BNested({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "B Nested",
        ),
      ),
    );
  }
}
