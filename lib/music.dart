import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TopMusic extends StatelessWidget {
  const TopMusic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(),
      child: Row(
        children: <Widget>[
          music(
            size: size,
            image: "assets/oxygen.png",
            name: "oxygen",
          ),
          music(
            size: size,
            image: "assets/bag.png",
            name: "Bag",
          ),
          music(
            size: size,
            image: "assets/last.png",
            name: "oxygen",
          ),
        ],
      ),
    );
  }
}

class PupolarMusic extends StatelessWidget {
  const PupolarMusic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(),
      child: Row(
        children: <Widget>[
          music(
            size: size,
            image: "assets/apollo.png",
            name: "Apollo",
          ),
          music(
            size: size,
            image: "assets/gang.png",
            name: "Gucci Gang",
          ),
          music(
            size: size,
            image: "assets/blur.png",
            name: "Apollo",
          ),
        ],
      ),
    );
  }
}

class music extends StatelessWidget {
  String image;
  String name;

  music({
    Key key,
    @required this.size,
    this.name,
    this.image,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.32,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(image),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 20,
            left: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 40, sigmaX: 50),
                child: Container(
                  height: 26,
                  width: 80,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: <Widget>[
                      Text(
                        name,
                        style: GoogleFonts.kodchasan(
                            fontWeight: FontWeight.w600,
                            color: HexColor("#26200B"),
                            fontSize: 10),
                      ),
                      Spacer(),
                      Image.asset("assets/play.png"),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
