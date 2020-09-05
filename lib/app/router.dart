import 'package:auto_route/auto_route_annotations.dart';
import 'package:base_test/ui/intro.dart';
import 'package:base_test/ui/login.dart';
import 'package:base_test/ui/signup.dart';

import '../ui/home.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: Home, initial: true),
    MaterialRoute(page: Login),
    MaterialRoute(page: SignUp),
    MaterialRoute(page: Intro),
  ],
)
class $Router {}

//  flutter pub run build_runner build --delete-conflicting-outputs
