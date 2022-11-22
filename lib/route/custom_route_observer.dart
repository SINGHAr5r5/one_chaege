/*

  - CustomRouteObserver class was created for track current page.
  - please initial this class in app.dart as navigatorObservers.
  - this class can't track page that changed by bottom tap.

*/

import 'package:flutter/material.dart';



class CustomRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  String? _navigateFromPage;

  String? get navigateFromPage => _navigateFromPage;

  @override
  void didPush(Route route, Route? previousRoute) {
    _navigateFromPage = previousRoute?.settings.name;
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
  }
}
