import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SignBox extends StatelessWidget {
  String name;

  String color;

  SignBox({
    Key key,
    this.name,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.only(
        left: 40,
        right: 35,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: HexColor(color),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name,
              style: GoogleFonts.kodchasan(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.normal,
              )),
          Image.asset(
            "assets/Vector.png",
            width: 39,
            height: 30,
          ),
        ],
      ),
    );
  }
}
