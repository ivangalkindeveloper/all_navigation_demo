import 'package:auto_route_demo/src/router/application_router.dart';
import 'package:auto_route_demo/src/application.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      Application(
        router: ApplicationRouter(),
      ),
    );
