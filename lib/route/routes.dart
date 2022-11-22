
import 'package:flutter/material.dart';

import '../page/homePage/homePage.dart';
import '../page/mainTab/mainTab.dart';


class Routes {
   static const String ROUTE_HOMEPAGE = "/ROUTE_HOMEPAGE";
   static const String ROUTE_MAINTAB = "/ROUTE_MAINTAB";


  /// The map used to define our routes, needs to be supplied to [MaterialApp]
  static Map<String, WidgetBuilder> getRoutes() {
    return {
       Routes.ROUTE_HOMEPAGE: (context) => const HomePagePage(),
       Routes.ROUTE_MAINTAB: (context) => const MainTabPage(),
     
    };
  }
}
