import 'dart:io';

import 'package:base_test/utils/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    File _image;

    Widget _buildCircle(
        double height, double width, double opacity, Widget child) {
      return Container(
        width: height,
        height: width,
        child: child,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      );
    }

    _buildHeader() {
      const double circleSize = 125;
      var headerHeight = MediaQuery.of(context).size.height / 4;
      return Container(
        height: headerHeight + (circleSize / 2),
        child: Stack(
          children: [
            Image.network(
              "https://image.freepik.com/free-vector/cricket-tournament-header_1302-15519.jpg",
              height: headerHeight,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
                bottom: 0,
                left: 5,
                top: circleSize,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildCircle(
                      circleSize,
                      circleSize,
                      0.3,
                      _image != null
                          ? Container()
                          : Padding(
                              padding: EdgeInsets.all(7),
                              child: ClipOval(
                                child: Image.network(
                                  "https://image.freepik.com/free-vector/cricket-tournament-header_1302-15519.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: circleSize / 2, right: 5),
                        child: Text(
                          'Edit Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: ColorConstants.colorLightGrey,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ))
          ],
        ),
      );
    }

    Widget _buildUserData() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Matt Harris',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: ColorConstants.colorLightBlue,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Sociao id : 12122112',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                Icon(
                  Icons.info,
                  color: ColorConstants.colorGrey,
                )
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildUserData(),
          ],
        ),
      ),
    );
  }
}
