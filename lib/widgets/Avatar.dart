
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
        glowColor: Colors.red,
        endRadius: 200,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage("assets/ChandramPhoto.jpg"),
        ));
  }
}
