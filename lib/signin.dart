import 'package:cream_test/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SignOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#e5e5e5"),
      body: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: size.height * 0.2,
          bottom: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image 2.png",
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "Dreams Come True",
              style: GoogleFonts.kodchasan(
                color: HexColor("#8A877D"),
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            SignBox(
              name: "Sign Up",
              color: "#D4AF37",
            ),
            SizedBox(
              height: 20,
            ),
            SignBox(
              name: "Sign in",
              color: "#26200B",
            ),
          ],
        ),
      ),
    );
  }
}
