import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_intro/utils/colors.dart';

// ignore: invalid_language_version_override
// @dart=2.9

// ignore: must_be_immutable
class HeaderBacket extends StatelessWidget {
  var text = "Login";
  var color;

  HeaderBacket(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [blueColors, blueColors],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter),
        borderRadius: BorderRadius.zero,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            right: MediaQuery.of(context).size.width * 0.4,
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
