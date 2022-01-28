import 'package:chandram_dutta/screens/skills/widgets/neu_logo_containers.dart';
import 'package:flutter/material.dart';
// ignore_for_file: import_of_legacy_library_into_null_safe
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:neumorphic_container/neumorphic_container.dart';

import '../../../providers/theme_provider.dart';

class SkillsMastered extends ConsumerWidget {
  const SkillsMastered({
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
                "Skills Mastered",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Wrap(children: [
              NeuLogoContainers(
                widget: FlutterLogo(
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: SizedBox(
                  height: 70,
                  width: 70,
                  child: SvgPicture.asset("assets/icons/dart.svg"),
                ),
              ),
              NeuLogoContainers(
                widget: SizedBox(
                  height: 70,
                  width: 70,
                  child: SvgPicture.asset("assets/icons/firebase.svg"),
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.linux,
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.terminal,
                  size: 50,
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.windows,
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.java,
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.python,
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.githubSquare,
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: FaIcon(
                  FontAwesomeIcons.gitAlt,
                  size: 70,
                ),
              ),
              NeuLogoContainers(
                widget: SizedBox(
                  height: 60,
                  width: 60,
                  child: SvgPicture.asset("assets/icons/vscode.svg"),
                ),
              ),
              NeuLogoContainers(
                widget: SizedBox(
                  height: 70,
                  width: 70,
                  child: SvgPicture.asset(
                    "assets/icons/jetbrainsBox.svg",
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
