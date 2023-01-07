import 'package:flutter_app/page/about/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/details/index.dart';
import 'package:flutter_app/page/unknown/index.dart';
import 'page/main/main.dart';

class RouterConfig {
  static final Map<String, WidgetBuilder> routes = {
    MainPage.routeName: (ctx) => MainPage(),
    AboutPage.routeName: (ctx) => AboutPage(),
  };

  static final initialRoute = MainPage.routeName;

  static final RouteFactory generateRoute = (settings) {
    if (settings.name == DetailPage.routeName) {
      return MaterialPageRoute(builder: (ctx) {
        return DetailPage(settings.arguments as String);
      });
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(builder: (ctx) {
      return UnknownPage();
    });
  };
}
