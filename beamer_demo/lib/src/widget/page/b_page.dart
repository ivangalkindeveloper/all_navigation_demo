import 'package:beamer_demo/src/widget/nested/a_nested.dart';
import 'package:beamer_demo/src/widget/nested/b_nested.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class BPage extends StatelessWidget {
  BPage({
    super.key,
  });

  final BeamerDelegate _delegate = BeamerDelegate(
    initialPath: '/a_nested',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/a_nested': (context, state, data) => const ANested(),
        '/b_nested': (context, state, data) => const BNested(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "B Page",
        ),
      ),
      body: Beamer(
        routerDelegate: _delegate,
      ),
    );
  }
}
