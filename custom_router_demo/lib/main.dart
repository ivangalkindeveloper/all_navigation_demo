import 'package:custom_router_demo/src/application/router/application_router_delegate.dart';
import 'package:custom_router_demo/src/application/widget/navigation_scope.dart';
import 'package:custom_router_demo/src/application/widget/application.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      RouterScope(
        delegate: ApplicationRouterDelegate(),
        child: const Application(),
      ),
    );
