import 'dart:async';

import 'package:base_test/app/locator.dart';
import 'package:base_test/app/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void _nav() {
    locator<NavigationService>().replaceWith(Routes.intro);
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () => _nav());
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'assets/images/transparent.png',
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
