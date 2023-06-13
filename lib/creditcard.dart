import 'package:auto_size_text/auto_size_text.dart';
import 'package:bankwebui/colorscustom.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return BlurryContainer(
      blur: 25,
      height: height / 3,
      width: width / 4,
      elevation: 0,
      color: Colors.white30,
      borderRadius: const BorderRadius.all(
        Radius.circular(28),
      ),
      child: Container(
        height: height / 3.5,
        width: width / 4,
        decoration: const BoxDecoration(
          // border: Border.all(
          //   color: Colors.white,
          // ),
          borderRadius: BorderRadius.all(
            Radius.circular(28.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "increase.png",
                    height: 30,
                    width: 30,
                    color: Colors.white,
                  ),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(90 / 360),
                    child: Image.asset(
                      "wifi.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Credit card number",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  AutoSizeText(
                    "5337 8622 4901 3294",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Name",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                      AutoSizeText(
                        "Anastasia Terner",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Exp. Date",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                      AutoSizeText(
                        "03/24",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/chip.png",
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleGreen extends StatelessWidget {
  const CircleGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.lightGreen,
        shape: BoxShape.circle,
      ),
    );
  }
}
