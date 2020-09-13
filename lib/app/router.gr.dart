// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/forgot_password.dart';
import '../ui/home.dart';
import '../ui/intro.dart';
import '../ui/language_selection/lanuguage_selection.dart';
import '../ui/login.dart';
import '../ui/login_otp.dart';
import '../ui/signup.dart';

class Routes {
  static const String home = '/';
  static const String login = '/Login';
  static const String signUp = '/sign-up';
  static const String intro = '/Intro';
  static const String forgotPassword = '/forgot-password';
  static const String loginOtp = '/login-otp';
  static const String languageSelection = '/language-selection';
  static const all = <String>{
    home,
    login,
    signUp,
    intro,
    forgotPassword,
    loginOtp,
    languageSelection,
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
    RouteDef(Routes.forgotPassword, page: ForgotPassword),
    RouteDef(Routes.loginOtp, page: LoginOtp),
    RouteDef(Routes.languageSelection, page: LanguageSelection),
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
    ForgotPassword: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPassword(),
        settings: data,
      );
    },
    LoginOtp: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginOtp(),
        settings: data,
      );
    },
    LanguageSelection: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LanguageSelection(),
        settings: data,
      );
    },
  };
}
