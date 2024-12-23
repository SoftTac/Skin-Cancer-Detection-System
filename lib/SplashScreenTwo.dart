import 'HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'GetStartedButton.dart';


class SplashScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5787),
      body: Stack(
        children: [
          SafeArea(
            minimum: EdgeInsets.fromLTRB(
              20,
              0,
              150,
              100,
            ),
            child: Container(
              child: Image.asset(
                'images/Polygon page2.png',
                width: 90,
                height: 70,
              ),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.fromLTRB(300, 10, 0, 20),
            child: Container(
              child: Image.asset(
                'images/Vector page2.png',
                width: 75.72,
                height: 139.88,
              ),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.fromLTRB(55, 60, 290, 0),
            child: Container(
              child: Image.asset(
                'images/Ellipse 2.png',
                width: 103.85,
                height: 163.12,
              ),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.fromLTRB(300, 510, 0, 0),
            child: Container(
              child: Image.asset(
                'images/Ellipse 3.png',
                width: 25,
                height: 30,
              ),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.fromLTRB(0, 440, 300, 0),
            child: Container(
              child: Image.asset(
                'images/Ellipse page2.png',
                width: 126.61,
                height: 126.61,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 0,
                  top: 110,
                ),
                child: Image.asset('images/Group.png'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 3,
                child: GetStartedButton(
                  onPressed: () {
                    // Navigate to the home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => myhome(),
                      ),
                    );
                  },
                    // Navigate to the home screen or any other screen when the button is pressed.

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
