// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:chandram_dutta/screens/home/widgets/theme_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neumorphic_container/neumorphic_container.dart';

class SkillsPage extends ConsumerWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
        actions: [ThemeIconButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            NeumorphicContainer(
              depth: 100,
              spread: 1,
              height: 130,
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
                    Text("Skills Mastered"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            NeumorphicContainer(
              depth: 100,
              spread: 1,
              height: 130,
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
                    Text("Skills Learning"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            NeumorphicContainer(
              depth: 100,
              spread: 1,
              height: 130,
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
                    Text("Skills Will Learn"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
