import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

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
          onPressed: () => context.beamToNamed("/a_nested"),
        ),
      ),
    );
  }
}
