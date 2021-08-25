import 'dart:ui';

import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/widgets/AnimatedLines.dart';
import 'package:chandram_dutta/widgets/Avatar.dart';
import 'package:chandram_dutta/widgets/CreditBar.dart';
import 'package:chandram_dutta/widgets/FirebaseRiveAnimation.dart';
import 'package:chandram_dutta/widgets/FlutterRiveAnimation.dart';
import 'package:chandram_dutta/widgets/MobileNavBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MobileNavBar(),
          Avatar(),
          Text(
            "hello",
            style: GoogleFonts.pacifico(
              color: Colors.black,
              fontSize: isDesktop(context) ? 100 : 50,
              // fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.red,
                ],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "I am",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isDesktop(context) ? 100 : 50,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Chandram Dutta",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isDesktop(context) ? 100 : 50,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                AnimatedLines(),
                SizedBox(height: 50),
                FlutterRiveAnimation(),
                SizedBox(height: 50),
                FirebaseRiveAnimation(),
                CreditBar()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
