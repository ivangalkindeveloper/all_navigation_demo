// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'application_router.dart';

abstract class _$ApplicationRouter extends RootStackRouter {
  // ignore: unused_element
  _$ApplicationRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ANestedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ANested(),
      );
    },
    AScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AScreen(),
      );
    },
    ATabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ATab(),
      );
    },
    BNestedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BNested(),
      );
    },
    BScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BScreen(),
      );
    },
    BTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BTab(),
      );
    },
  };
}

/// generated route for
/// [ANested]
class ANestedRoute extends PageRouteInfo<void> {
  const ANestedRoute({List<PageRouteInfo>? children})
      : super(
          ANestedRoute.name,
          initialChildren: children,
        );

  static const String name = 'ANestedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AScreen]
class AScreenRoute extends PageRouteInfo<void> {
  const AScreenRoute({List<PageRouteInfo>? children})
      : super(
          AScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ATab]
class ATabRoute extends PageRouteInfo<void> {
  const ATabRoute({List<PageRouteInfo>? children})
      : super(
          ATabRoute.name,
          initialChildren: children,
        );

  static const String name = 'ATabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BNested]
class BNestedRoute extends PageRouteInfo<void> {
  const BNestedRoute({List<PageRouteInfo>? children})
      : super(
          BNestedRoute.name,
          initialChildren: children,
        );

  static const String name = 'BNestedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BScreen]
class BScreenRoute extends PageRouteInfo<void> {
  const BScreenRoute({List<PageRouteInfo>? children})
      : super(
          BScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'BScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BTab]
class BTabRoute extends PageRouteInfo<void> {
  const BTabRoute({List<PageRouteInfo>? children})
      : super(
          BTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'BTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
