import 'package:base_test/ui/home/profile/profile.dart';
import 'package:base_test/ui/login_otp.dart';
import 'package:flutter/material.dart';

import '../forgot_password.dart';
import '../login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Profile(),
    Login(),
    ForgotPassword(),
    LoginOtp()
  ];

  _updateTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        elevation: 4.0,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  _updateTab(0);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.show_chart),
                onPressed: () {
                  _updateTab(1);
                },
              ),
            ),
            Expanded(child: new Text('')),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.tab),
                onPressed: () {
                  _updateTab(2);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  _updateTab(3);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
