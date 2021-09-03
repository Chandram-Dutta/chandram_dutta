import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/widgets/FirebaseRiveAnimation.dart';
import 'package:chandram_dutta/widgets/FlutterRiveAnimation.dart';
import 'package:chandram_dutta/widgets/RiveRiveAnimation.dart';
import 'package:flutter/material.dart';

class RiveAnimations extends StatelessWidget {
  const RiveAnimations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var animations = [
      FlutterRiveAnimation(),
      SizedBox(height: 50),
      FirebaseRiveAnimation(),
      SizedBox(height: 50),
      RiveRiveAnimation(),
    ];

    return Container(
      child: isDesktop(context)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: animations,
            )
          : Column(
              children: animations,
            ),
    );
  }
}
