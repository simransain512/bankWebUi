import 'package:auto_size_text/auto_size_text.dart';
import 'package:bankwebui/bottompage.dart';
import 'package:bankwebui/colorscustom.dart';
import 'package:bankwebui/creditcard.dart';
import 'package:bankwebui/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [
                CustomColors.darkGreen,
                CustomColors.blackLight,
              ],
              stops: const [0, 1],
              center: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomAppBar(),
              Image.asset(
                "sparkler.png",
                color: CustomColors.lightGreen,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 150.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          "MONEY",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: CustomColors.lightGreen,
                          ),
                        ),
                        AutoSizeText(
                          "Information for\nfinancial literacy",
                          style: GoogleFonts.poppins(
                            fontSize: 45,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        AutoSizeText(
                          "We have a large section where we give tips on\nhow to manage your finances.",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Stack(
                      fit: StackFit.loose,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          right: -40,
                          height: 250,
                          width: 250,
                          child: CircleGreen(),
                        ),
                        RotationTransition(
                          turns: AlwaysStoppedAnimation(12 / 360),
                          child: Padding(
                            padding: EdgeInsets.only(right: 25.0),
                            child: CreditCard(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150.0, top: 10.0),
                child: Row(
                  children: [
                    AutoSizeText(
                      "learn more",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Stack(
                      fit: StackFit.loose,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              60,
                            ),
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "arrow.png",
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 150.0,
                ),
                child: BottomPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
