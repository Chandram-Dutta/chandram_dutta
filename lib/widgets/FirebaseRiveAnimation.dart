import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

const riveFile = "assets/truck.riv";

class FirebaseRiveAnimation extends StatelessWidget {
  const FirebaseRiveAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Backend Services By",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        SizedBox(
            height: 250,
            width: 250,
            child: RiveAnimation.asset('assets/rive/firebase.riv')),
      ],
    );
  }
}
