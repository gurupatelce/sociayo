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
    locator<NavigationService>().navigateTo(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _nav,
        child: Container(
          color: Colors.red,
        ));
  }
}
