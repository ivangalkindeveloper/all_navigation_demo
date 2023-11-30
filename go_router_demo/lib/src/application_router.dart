import 'package:go_router_demo/src/widget/nested/a_nested.dart';
import 'package:go_router_demo/src/widget/nested/b_nested.dart';
import 'package:go_router_demo/src/widget/page/a_page.dart';
import 'package:go_router_demo/src/widget/page/b_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class ApplicationRouter {
  final GoRouter router = GoRouter(
    initialLocation: "/a_page",
    routes: [
      GoRoute(
        path: "/a_page",
        builder: (context, state) => const APage(),
      ),
      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: "/a_nested",
                builder: (context, state) => const ANested(),
              ),
              GoRoute(
                path: "/b_nested",
                builder: (context, state) => const BNested(),
              ),
            ],
          ),
        ],
        builder: (
          BuildContext context,
          GoRouterState state,
          Widget child,
        ) =>
            BPage(
          child: child,
        ),
      ),
    ],
  );
}
