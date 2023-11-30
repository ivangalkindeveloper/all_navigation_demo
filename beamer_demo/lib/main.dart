import 'package:beamer_demo/src/application_router.dart';
import 'package:beamer_demo/src/application.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      Application(
        router: ApplicationRouter(),
      ),
    );
