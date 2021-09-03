import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveRiveAnimation extends StatelessWidget {
  const RiveRiveAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Animations By",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        SizedBox(
            height: 300,
            width: 300,
            child: RiveAnimation.asset('assets/rive/rive.riv')),
      ],
    );
  }
}
