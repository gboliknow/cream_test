import 'package:cream_test/music.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#e5e5e5"),
      body: Column(children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 60,
              bottom: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Explore",
                      style: GoogleFonts.kodchasan(
                        color: HexColor("#000000"),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Image.asset("assets/search.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/download.png"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                    bottom: 10,
                  ),
                  height: 185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/theboy.png"),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          right: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Hottest Talents",
                                style: GoogleFonts.kodchasan(
                                  color: HexColor("#FFFFFF"),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Weekly",
                                style: GoogleFonts.kodchasan(
                                  color: HexColor("#FFFFFF"),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "New Talents",
                                style: GoogleFonts.kodchasan(
                                  color: HexColor("#FFFFFF"),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Image.asset("assets/ellipsis.png"),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Top Talents",
                      style: GoogleFonts.kodchasan(
                        color: HexColor("#000000"),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.kodchasan(
                        color: HexColor("#D4AF37"),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/brownarrow.png"),
                  ],
                ),
                TopMusic(),
                Row(
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.kodchasan(
                        color: HexColor("#000000"),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.kodchasan(
                        color: HexColor("#D4AF37"),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/brownarrow.png"),
                  ],
                ),
                PupolarMusic()
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(children: [
                Column(
                  children: [
                    SizedBox(
                      height: 11,
                    ),
                    Image.asset("assets/ff.png"),
                    SizedBox(
                      height: 3,
                    ),
                    Text("1:37/2:34",
                        style: GoogleFonts.kodchasan(
                            color: HexColor("#4B4B4B"),
                            fontSize: 8,
                            fontWeight: FontWeight.w900)),
                  ],
                ),
                Image.asset("assets/blaq.png"),
                Image.asset("assets/bb.png"),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("Fendi - Blaqbones",
                        style: GoogleFonts.kodchasan(
                            color: HexColor("#4B4B4B"),
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                    Text("ft Joe boy",
                        style: GoogleFonts.kodchasan(
                            color: HexColor("#4B4B4B"),
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/cancel.png"),
              ]),
              Container(
                  height: 60,
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("#26200B"),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Expanded(child: Image.asset("assets/1.png")),
                          Text("Explore",
                              style: GoogleFonts.kodchasan(
                                  color: HexColor("#D4AF37"),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Image.asset("assets/2.png"),
                      Image.asset("assets/3.png"),
                      Image.asset("assets/4.png"),
                      Image.asset("assets/5.png"),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
