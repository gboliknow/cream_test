import 'package:cream_test/login.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#e5e5e5"),
      body: GestureDetector(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Login();
                },
              ),
            );
          },
          child: Center(
            child: Image.asset(
              "assets/image 2.png",
            ),
          ),
        ),
      ),
    );
  }
}
