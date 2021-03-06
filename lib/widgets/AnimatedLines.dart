import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedLines extends StatelessWidget {
  const AnimatedLines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText('Coder',
              textStyle: GoogleFonts.nanumGothicCoding(
                  fontSize: isDesktop(context) ? 100 : 50, color: Colors.white),
              textAlign: TextAlign.center,
              speed: Duration(milliseconds: 200)),
          ScaleAnimatedText('Designer',
              textStyle: GoogleFonts.luckiestGuy(
                  fontSize: isDesktop(context) ? 100 : 50, color: Colors.white),
              textAlign: TextAlign.center,
              duration: Duration(milliseconds: 3000)),
          RotateAnimatedText(
            '&',
            textStyle: TextStyle(
                fontSize: isDesktop(context) ? 100 : 50, color: Colors.white),
            textAlign: TextAlign.center,
            rotateOut: true,
          ),
          WavyAnimatedText(
            "More!!!",
            textStyle: TextStyle(
              fontSize: isDesktop(context) ? 100 : 50,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

var colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];
