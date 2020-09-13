import 'dart:math';

import 'package:flutter/material.dart';

class RandomColoredBox extends StatelessWidget {
  final Widget child;

  const RandomColoredBox({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

    return Container(
      margin: EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 15),
      padding: EdgeInsets.all(5),
      height: 50,
      child: child,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent, width: 3.0),
        color: color.shade300,
        boxShadow: [
          BoxShadow(
            color: color.shade600,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 3.0), // shadow direction: bottom right
          )
        ],
      ),
    );
  }
}
