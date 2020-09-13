import 'dart:math';

import 'package:base_test/app/locator.dart';
import 'package:base_test/app/router.gr.dart';
import 'package:base_test/model/language_model.dart';
import 'package:base_test/ui/language_selection/colored_box.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class LanguageSelection extends StatefulWidget {
  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  List<LanguageModel> languageList = [];

  @override
  void initState() {
    super.initState();
    languageList.addAll([
      LanguageModel(englishName: 'Hindi', nativeNamel: 'हिन्दी'),
      LanguageModel(englishName: 'Marathi', nativeNamel: 'मराठी'),
      LanguageModel(englishName: 'Gujarati', nativeNamel: 'ગુજરાતી'),
      LanguageModel(englishName: 'Punjabi', nativeNamel: 'ਪੰਜਾਬੀ'),
      LanguageModel(englishName: 'Telugu', nativeNamel: 'తెలుగు'),
      LanguageModel(englishName: 'Malayalam', nativeNamel: 'മലയാളം'),
      LanguageModel(englishName: 'Bengali', nativeNamel: 'বাংলা'),
      LanguageModel(englishName: 'Odia', nativeNamel: 'ଓଡ଼ିଆ'),
      LanguageModel(englishName: 'Kannada', nativeNamel: 'ಕನ್ನಡ'),
      LanguageModel(englishName: 'Assamese', nativeNamel: 'অসমীয়া'),
    ]);
  }

  void _navigate() {
    locator<NavigationService>().replaceWith(Routes.intro);
  }

  Widget _buildGrid() {
    return new GridView.count(
      physics: ClampingScrollPhysics(),
      primary: true,
      shrinkWrap: true,
      childAspectRatio: 1.5,
      crossAxisCount: 2,
      children: new List<Widget>.generate(
        languageList.length,
        (index) {
          final textStyle = TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold);
          return GestureDetector(
            onTap: _navigate,
            child: RandomColoredBox(
              child: new Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      languageList[index].nativeNamel,
                      style: textStyle,
                    ),
                    Text(
                      languageList[index].englishName,
                      style: textStyle,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Text('Select your Language',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
              SizedBox(
                height: 25,
              ),
              Expanded(
                flex: 1,
                child: _buildGrid(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
