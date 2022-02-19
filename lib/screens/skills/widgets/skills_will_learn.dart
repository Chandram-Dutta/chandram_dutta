// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:chandram_dutta/screens/skills/widgets/neu_logo_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic_container/neumorphic_container.dart';

import '../../../providers/theme_provider.dart';

class SkillsWillLearn extends ConsumerWidget {
  const SkillsWillLearn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicContainer(
      depth: 100,
      spread: 1,
      borderRadius: 10,
      // borderColor: Colors.red,
      width: MediaQuery.of(context).size.width - 20,
      primaryColor: ref.watch(isDarkThemeProvider)
          ? Theme.of(context).colorScheme.background
          : Theme.of(context).scaffoldBackgroundColor,
      borderThickness: 1,
      curvature: Curvature.flat,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Skills Will Learn",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Wrap(children: [
              NeuLogoContainers(
                iconName: "Swift UI",
                index: 17,
                widget: FaIcon(
                  FontAwesomeIcons.swift,
                  size: 70,
                  color: Color.fromARGB(255, 33, 72, 247),
                ),
              ),
              NeuLogoContainers(
                iconName: "Solana",
                index: 18,
                widget: SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    "assets/icons/solana.png",
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
