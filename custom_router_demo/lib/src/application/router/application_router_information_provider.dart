import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ApplicationRouteInformationProvider
    extends PlatformRouteInformationProvider {
  ApplicationRouteInformationProvider()
      : super(
          initialRouteInformation: RouteInformation(
            uri: Uri.parse(
              PlatformDispatcher.instance.defaultRouteName,
            ),
          ),
        );

  // @override
  // Future<bool> didPopRoute() {
  //   return super.didPopRoute();
  // }

  // @override
  // Future<bool> didPushRouteInformation(
  //   RouteInformation routeInformation,
  // ) {
  //   return super.didPushRouteInformation(routeInformation);
  // }
}
