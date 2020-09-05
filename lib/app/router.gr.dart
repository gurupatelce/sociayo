// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/home.dart';
import '../ui/intro.dart';
import '../ui/login.dart';
import '../ui/signup.dart';

class Routes {
  static const String home = '/';
  static const String login = '/Login';
  static const String signUp = '/sign-up';
  static const String intro = '/Intro';
  static const all = <String>{
    home,
    login,
    signUp,
    intro,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.home, page: Home),
    RouteDef(Routes.login, page: Login),
    RouteDef(Routes.signUp, page: SignUp),
    RouteDef(Routes.intro, page: Intro),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Home: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Home(),
        settings: data,
      );
    },
    Login: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Login(),
        settings: data,
      );
    },
    SignUp: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUp(),
        settings: data,
      );
    },
    Intro: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Intro(),
        settings: data,
      );
    },
  };
}
