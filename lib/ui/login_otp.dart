import 'package:base_test/app/locator.dart';
import 'package:base_test/utils/constants.dart';
import 'package:base_test/widgets/base_button.dart';
import 'package:base_test/widgets/base_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginOtp extends StatefulWidget {
  @override
  _LoginOtpState createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  Future<void> _openDialog() async {
    await locator<DialogService>().showCustomDialog(
      variant: DialogType.base,
      title: 'Mobile Number verified successfully!',
    );
  }

  Widget pinInput() {
    return Container(
      width: 180,
      child: PinCodeTextField(
        length: 4,
        obsecureText: false,
        animationType: AnimationType.fade,
        textStyle: TextStyle(fontSize: 15),
        pinTheme: PinTheme(
            borderWidth: 1.5,
            shape: PinCodeFieldShape.underline,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 25,
            fieldWidth: 30,
            inactiveColor: Colors.black,
            activeFillColor: Colors.black,
            activeColor: Colors.black),
        animationDuration: Duration(milliseconds: 300),
        // controller: textEditingController,
        onCompleted: (v) {
          print("Completed");
        },
        onChanged: (value) {
          print(value);
          setState(() {
            // currentText = value;
          });
        },
        beforeTextPaste: (text) {
          print("Allowing to paste $text");
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
        appContext: null,
      ),
    );
  }

  Widget _fieldOTP() {
    return Container(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/images/password.png',
            height: 30,
            width: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                'Please Enter The OTP',
                textAlign: TextAlign.start,
                style:
                    TextStyle(color: ColorConstants.colorBlue.withOpacity(0.5)),
              ),
              pinInput()
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.transparent,
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstants.colorShadow,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: _fieldOTP(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BaseButton(title: 'Verify', buttonAction: _openDialog),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'RESEND',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.colorButton),
            )
          ]),
        ),
      ),
    );
  }
}
