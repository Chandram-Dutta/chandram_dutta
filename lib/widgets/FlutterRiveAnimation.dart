import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

const riveFile = "assets/truck.riv";

class FlutterRiveAnimation extends StatelessWidget {
  const FlutterRiveAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Building Multiplatform Opensource Apps Using"),
        RiveAnimation.asset('assets/truck.riv'),
      ],
    );
  }
}
