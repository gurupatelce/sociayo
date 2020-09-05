import 'package:base_test/app/locator.dart';
import 'package:base_test/app/router.gr.dart';
import 'package:base_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _fieldPassword(String text, bool secure) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.black,
      child: TextFormField(
        obscureText: secure,
        autofocus: false,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        decoration: InputDecoration(
            labelText: text,
            labelStyle:
                TextStyle(color: ColorConstants.colorBlue, fontSize: 16),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Image.asset(secure
                ? 'assets/images/password.png'
                : 'assets/images/profile.png'),
            border: InputBorder.none),
      ),
    );
  }

  void _navigate() {
    locator<NavigationService>().navigateTo(Routes.signUp);
  }

  Widget makeButton() {
    return Container(
      height: 45,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'LOG IN',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConstants.colorButton,
                    size: 18,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white)),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.colorButton),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              Image.asset(
                'assets/images/transparent.png',
                height: 200,
                width: 200,
              ),
              _fieldPassword("USERNAME / EMAIL", false),
              SizedBox(
                height: 15,
              ),
              _fieldPassword("PASSWORD", true),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                // onTap: _navigate,
                child: makeButton(),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Don’t have an account? Click to',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                    TextSpan(
                        text: ' create a new account.',
                        style: TextStyle(
                            color: ColorConstants.colorBlue, fontSize: 14)),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Or Did you  ',
                        style: TextStyle(color: Colors.black, fontSize: 14)),
                    TextSpan(
                        text: 'Forget Your Password?',
                        style: TextStyle(
                            color: ColorConstants.colorBlue, fontSize: 14)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
