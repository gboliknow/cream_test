import 'package:cream_test/explore.dart';
import 'package:cream_test/signin.dart';
import 'package:cream_test/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#e5e5e5"),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SignOption();
              },
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 70,
            bottom: 10,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset("assets/back.png"),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                "Sign In",
                style: GoogleFonts.kodchasan(
                  color: HexColor("#4B4B4B"),
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Welcome back",
                style: GoogleFonts.kodchasan(
                    color: HexColor("#4B4B4B"), fontSize: 12),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                height: 70,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 10,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextFormField(
                  validator: (val) {
                    return val.isEmpty || val.length < 11
                        ? "Enter Phone 11+ characters"
                        : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Username/Email",
                    hintStyle: GoogleFonts.kodchasan(
                      color: HexColor("#26200B").withOpacity(0.5),
                      fontSize: 12,
                    ),
                    icon: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: HexColor("#D4AF37").withOpacity(0.2),
                      ),
                      child: Icon(
                        Icons.person,
                        color: HexColor("#828282"),
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                padding: EdgeInsets.only(
                  left: 15,
                  right: 10,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: TextFormField(
                  validator: (val) {
                    return val.isEmpty || val.length < 11
                        ? "Enter Phone 11+ characters"
                        : null;
                  },
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: GoogleFonts.kodchasan(
                      color: HexColor("#26200B").withOpacity(0.5),
                      fontSize: 12,
                    ),
                    icon: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: HexColor("#D4AF37").withOpacity(0.2),
                      ),
                      child: Image.asset("assets/pass.png"),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        Icons.visibility,
                        size: 30,

                        color: HexColor("#828282"),
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Lost Your Password?",
                  style: GoogleFonts.kodchasan(
                      color: HexColor("#26200B"),
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Explore();
                      },
                    ),
                  );
                },
                child: SignBox(
                  name: "Sign in",
                  color: "#26200B",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignOption();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Or Sign in with",
                    style: GoogleFonts.kodchasan(
                      color: HexColor("#26200B"),
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Image.asset("assets/google.png"),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Image.asset("assets/Vector1.png"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
