import 'package:auto_route_demo/src/widget/nested/a_nested.dart';
import 'package:auto_route_demo/src/widget/nested/b_nested.dart';
import 'package:auto_route_demo/src/widget/screen/a_screen.dart';
import 'package:auto_route_demo/src/widget/screen/b_screen.dart';
import 'package:auto_route_demo/src/widget/tab/a_tab.dart';
import 'package:auto_route_demo/src/widget/tab/b_tab.dart';
import 'package:auto_route/auto_route.dart';
import 'dart:async';

part 'application_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: "",
)
class ApplicationRouter extends _$ApplicationRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: "/a_screen",
          page: AScreenRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: "/b_screen",
          page: BScreenRoute.page,
          children: [
            AutoRoute(
              path: "a_tab",
              page: ATabRoute.page,
              initial: true,
            ),
            AutoRoute(
              path: "b_tab",
              page: BTabRoute.page,
              children: [
                AutoRoute(
                  path: "a_nested",
                  page: ANestedRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: "b_nested",
                  page: BNestedRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];

  FutureOr<DeepLink> Function(PlatformDeepLink) get deepLinkBuilder => (
        PlatformDeepLink deepLink,
      ) {
        final List<String> pathSegments = deepLink.uri.pathSegments;
        if (pathSegments.isNotEmpty) {
          return DeepLink(
            [
              const AScreenRoute(),
              if (pathSegments.contains("b_screen"))
                BScreenRoute(
                  children: [
                    const ATabRoute(),
                    if (pathSegments.contains("b_tab"))
                      BTabRoute(
                        children: [
                          const ANestedRoute(),
                          if (pathSegments.contains("b_nested"))
                            const BNestedRoute(),
                        ],
                      ),
                  ],
                ),
            ],
          );
        }

        return DeepLink.defaultPath;
      };
}
