import 'package:base_test/app/locator.dart';
import 'package:base_test/utils/constants.dart';
import 'package:base_test/utils/localization/localization.dart';
import 'package:base_test/widgets/base_button.dart';
import 'package:base_test/widgets/base_dialog.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  Future<void> _openDialog() async {
    await locator<DialogService>().showCustomDialog(
      variant: DialogType.base,
      title: 'Password Link Sent!',
    );
  }

  Widget _fieldPassword(String text, bool secure) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorConstants.colorShadow,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: secure,
        autofocus: false,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: ColorConstants.colorBlue, fontSize: 16),
          fillColor: Colors.white,
          filled: true,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Image.asset(
              secure ? 'assets/images/password.png' : 'assets/images/mail.png'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/transparent.png',
                  height: 200,
                  width: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  Localization.of(context).labelForgotPassword,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstants.colorGrey,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: _fieldPassword("EMAIL", false),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BaseButton(
                    title: 'Reset Password', buttonAction: _openDialog),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
