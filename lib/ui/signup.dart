import 'package:base_test/app/locator.dart';
import 'package:base_test/app/router.gr.dart';
import 'package:base_test/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkBoxValue = false;

  Widget _fieldPassword(String text, bool secure, String imagname) {
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
            prefixIcon: Image.asset(
              "assets/images/${imagname}.png",
              height: 20,
              width: 20,
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget makeButton() {
    return Container(
      height: 45,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              'SUBMIT',
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: ColorConstants.colorBlue, width: 3)),
                  child: Image.asset('assets/images/rectangle.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                _fieldPassword("First Name", false, "profile"),
                SizedBox(
                  height: 15,
                ),
                _fieldPassword("Mobile Number", false, "mail"),
                SizedBox(
                  height: 25,
                ),
                _fieldPassword("Aadhar Number", false, "mail"),
                SizedBox(
                  height: 25,
                ),
                _fieldPassword("Email", false, "mail"),
                SizedBox(
                  height: 25,
                ),
                _fieldPassword("USERNAME", false, "profile"),
                SizedBox(
                  height: 25,
                ),
                _fieldPassword("PASSWORD", true, "password"),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: checkBoxValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            checkBoxValue = newValue;
                          });
                        }),
                    RichText(
                      text: TextSpan(
                        // style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'By creating an account, you agree to our ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14)),
                          TextSpan(
                              text: '\nTerms of Service and Privacy Policy',
                              style: TextStyle(
                                  color: ColorConstants.colorBlue,
                                  fontSize: 14)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {
                      locator<NavigationService>().navigateTo(Routes.loginOtp);
                    },
                    child: makeButton()),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
