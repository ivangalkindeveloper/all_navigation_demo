import 'package:custom_router_demo/src/application/router/application_router_state.dart';
import 'package:flutter/material.dart';

class ApplicationRouterTransitionDelegate
    extends TransitionDelegate<ApplicationRouterConfig> {
  @override
  Iterable<RouteTransitionRecord> resolve({
    required List<RouteTransitionRecord> newPageRouteHistory,
    required Map<RouteTransitionRecord?, RouteTransitionRecord>
        locationToExitingPageRoute,
    required Map<RouteTransitionRecord?, List<RouteTransitionRecord>>
        pageRouteToPagelessRoutes,
  }) {
    final List<RouteTransitionRecord> records = [];
    for (RouteTransitionRecord record in newPageRouteHistory) {
      if (record.isWaitingForEnteringDecision) {
        print("HERE 0");
        record.markForPush();
      }
      if (record.isWaitingForExitingDecision) {
        print("HERE 1");
        record.markForRemove();
      }
      records.add(record);
    }
    return records;
  }
}
