import 'package:flutter/material.dart';
import 'SplashScreenTwo.dart'; // Import SplashScreenTwo
import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2E5787),
      body: Stack(
        children: [
          // Your splash screen content here
          SafeArea(
            child: Container(
              child: Image.asset(
                'images/Polygon 1.png',
                width: 120,
                height: 70,
              ),
            ),
          ),
          SafeArea(
            minimum: EdgeInsets.fromLTRB(300, 10, 0, 20),
            child: Container(
              child: Image.asset(
                'images/Vector 1.png',
                width: 103.85,
                height: 163.12,
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
            minimum: EdgeInsets.fromLTRB(310, 510, 0, 0),
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
                'images/Ellipse 1.png',
                width: 126.61,
                height: 126.61,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Group.png',
              ),
              SizedBox(height: 35),
              Text(
                'WELCOME TO DERMASCOPE APP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                  wordSpacing: 1.5,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 1,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedItemColor: Colors.blue,
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.skip_next, color: Colors.white),
                  label: 'Skip',
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                  label: 'Next',
                ),
              ],
              selectedLabelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == 0) {
      print('Skip button tapped');
      // Navigate to the home page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => myhome()),
      );
    } else if (index == 1) {
      print('Forward arrow tapped');
      // Navigate to SplashScreenTwo
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashScreenTwo()),
      );
    }
  }
}
