import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BTab extends StatelessWidget {
  const BTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "B Tab",
        ),
      ),
      body: const AutoRouter(),
    );
  }
}
