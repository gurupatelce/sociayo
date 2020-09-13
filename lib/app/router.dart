import 'package:auto_route/auto_route_annotations.dart';
import 'package:base_test/ui/forgot_password.dart';
import 'package:base_test/ui/intro.dart';
import 'package:base_test/ui/language_selection/lanuguage_selection.dart';
import 'package:base_test/ui/login.dart';
import 'package:base_test/ui/login_otp.dart';
import 'package:base_test/ui/signup.dart';

import '../ui/home.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: Home, initial: true),
    MaterialRoute(page: Login),
    MaterialRoute(page: SignUp),
    MaterialRoute(page: Intro),
    MaterialRoute(page: ForgotPassword),
    MaterialRoute(page: LoginOtp),
    MaterialRoute(page: LanguageSelection),
  ],
)
class $Router {}

//  flutter pub run build_runner build --delete-conflicting-outputs
