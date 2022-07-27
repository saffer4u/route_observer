import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:route_observer/observed_routes.dart';

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  void _sendScreenView(PageRoute<dynamic> route, String type) {
    var screenName = route.settings.name;
    log('$type : $screenName');
    observedRoutes.add('$type : $screenName');
    // Keep track of all screens
  }

  @override
  void didPush(route, previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      _sendScreenView(route, "Pushed");
    }
  }

  @override
  void didReplace({newRoute, oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      _sendScreenView(newRoute, "Replaced");
    }
  }

  @override
  void didPop(route, previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute, "Poped");
    }
  }
}
