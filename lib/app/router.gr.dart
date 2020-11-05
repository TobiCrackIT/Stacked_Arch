// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/bottom_bar/bottom_bar_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/splash/splash_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String splashView = '/';
  static const String bottomBarView = '/bottom-bar-view';
  static const String homeView = '/home-view';
  static const String startUpView = '/start-up-view';
  static const all = <String>{
    splashView,
    bottomBarView,
    homeView,
    startUpView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.bottomBarView, page: BottomBarView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.startUpView, page: StartUpView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
    BottomBarView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BottomBarView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
    HomeView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomeView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
    StartUpView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => StartUpView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
  };
}
