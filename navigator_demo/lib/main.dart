import 'package:navigator_demo/src/application/navigation/a_navigation_controller.dart';
import 'package:navigator_demo/src/application/navigation/b_navigation_controller.dart';
import 'package:navigator_demo/src/application/widget/navigation_scope.dart';
import 'package:navigator_demo/src/application/widget/application.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      NavigationScope(
        aController: ANavigationController(),
        bController: BNavigationController(),
        child: const Application(),
      ),
    );
