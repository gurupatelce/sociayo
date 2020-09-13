import 'dart:async';

import 'package:base_test/app/locator.dart';
import 'package:base_test/app/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _nav() {
    locator<NavigationService>().replaceWith(Routes.languageSelection);
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
