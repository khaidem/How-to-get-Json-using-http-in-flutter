// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../page/page.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    AuthScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthScreen());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    HomeDetailRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeDetailPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(AuthScreen.name, path: '/'),
        _i2.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i2.RouteConfig(HomeDetailRoute.name, path: '/home-detail-page')
      ];
}

/// generated route for
/// [_i1.AuthScreen]
class AuthScreen extends _i2.PageRouteInfo<void> {
  const AuthScreen() : super(AuthScreen.name, path: '/');

  static const String name = 'AuthScreen';
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.HomeDetailPage]
class HomeDetailRoute extends _i2.PageRouteInfo<void> {
  const HomeDetailRoute()
      : super(HomeDetailRoute.name, path: '/home-detail-page');

  static const String name = 'HomeDetailRoute';
}
