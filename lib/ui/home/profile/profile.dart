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
                top: circleSize + 10,
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
                        margin:
                            EdgeInsets.only(top: circleSize / 2 + 10, right: 5),
                        child: Text(
                          'Edit Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        padding: EdgeInsets.all(8),
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

    _buildStats(label, count) {
      return Column(
        children: [
          Text(
            count,
            style: TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(color: Colors.black),
          ),
        ],
      );
    }

    _buildCard() {
      return Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(3))),
        child: (Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Performance Yesterday'),
                  Row(
                    children: [
                      Text(
                        'View',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                        size: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStats('Posts', '12'),
                  _buildStats('Views', '255'),
                  _buildStats('Interaction', '111'),
                ],
              ),
            )
          ],
        )),
      );
    }

    _buildLabel(number, label) {
      return Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              number,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              label,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
    }

    Widget _buildFollowers() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLabel('12 ', 'Following'),
            _buildLabel('1300 ', 'Followers'),
            _buildLabel('13 ', 'Groups')
          ],
        ),
      );
    }

    Widget _buildTag() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Status',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
              Row(
                children: [
                  Chip(label: Text('Tag 1')),
                  SizedBox(
                    width: 5,
                  ),
                  Chip(label: Text('Tag 2'))
                ],
              )
            ]),
      );
    }

    Widget _buildImage(image, label) {
      return Column(
        children: [
          Image.asset(
            image,
            height: 40,
            width: 40,
          ),
          SizedBox(
            height: 5,
          ),
          Text(label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))
        ],
      );
    }

    Widget _buildIcons() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImage('assets/images/ic_wallet.png', 'Wallet'),
          _buildImage('assets/images/ic_create.png', 'Create Content'),
          _buildImage('assets/images/ic_verified.png', 'Get Verified'),
          _buildImage(
              'assets/images/ic_community.png', 'Community \nAmbassador')
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            _buildUserData(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 1,
              width: MediaQuery.of(context).size.width - 20,
              alignment: Alignment.center,
              color: Colors.grey,
            ),
            _buildTag(),
            _buildFollowers(),
            _buildCard(),
            Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 150,
                alignment: Alignment.center,
                color: Colors.blue[700]),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: _buildIcons(),
            )
          ],
        ),
      ),
    );
  }
}
