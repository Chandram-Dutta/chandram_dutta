import 'package:avatar_glow/avatar_glow.dart';
import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Avatar extends ConsumerWidget {
  const Avatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AvatarGlow(
        glowColor: ref.watch(isChandramProvider) ? Colors.white : Colors.black,
        endRadius: 200,
        duration: Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(milliseconds: 100),
        child: CircleAvatar(
          radius: 100,
          backgroundImage: ref.watch(isChandramProvider)
              ? AssetImage("assets/ChandramPhoto.jpg")
              : AssetImage("assets/FlutterZed.png"),
        ));
  }
}
