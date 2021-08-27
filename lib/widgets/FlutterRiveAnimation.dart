import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FlutterRiveAnimation extends StatelessWidget {
  const FlutterRiveAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Building Multiplatform Opensource Apps Using",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        SizedBox(
            height: 250,
            width: 250,
            child: RiveAnimation.asset('assets/rive/flutter.riv')),
      ],
    );
  }
}
