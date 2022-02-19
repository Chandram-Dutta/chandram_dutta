// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:chandram_dutta/screens/skills/widgets/neu_logo_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic_container/neumorphic_container.dart';

import '../../../providers/theme_provider.dart';

class SkillsLearning extends ConsumerWidget {
  const SkillsLearning({
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
                "Skills Learning",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Wrap(children: [
              NeuLogoContainers(
                iconName: "Swift",
                index: 12,
                widget: FaIcon(
                  FontAwesomeIcons.swift,
                  size: 70,
                  color: Color.fromARGB(255, 255, 72, 0),
                ),
              ),
              NeuLogoContainers(
                iconName: "Ethereum Blockchain",
                index: 13,
                widget: FaIcon(
                  FontAwesomeIcons.ethereum,
                  size: 60,
                ),
              ),
              NeuLogoContainers(
                iconName: "Solidity",
                index: 14,
                widget: SizedBox(
                  height: 70,
                  width: 70,
                  child: SvgPicture.asset(
                    "assets/icons/solidity.svg",
                    color: ref.watch(isDarkThemeProvider)
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
              NeuLogoContainers(
                iconName: "Metamask Wallet",
                index: 15,
                widget: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    "assets/icons/metamask.png",
                  ),
                ),
              ),
              NeuLogoContainers(
                iconName: "Alchemy Platform",
                index: 16,
                widget: SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    "assets/icons/alchemy.png",
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
