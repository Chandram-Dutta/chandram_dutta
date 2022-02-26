// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:chandram_dutta/screens/home/widgets/theme_icon_button.dart';
import 'package:chandram_dutta/screens/skills/widgets/skills_learning.dart';
import 'package:chandram_dutta/screens/skills/widgets/skills_mastered.dart';
import 'package:chandram_dutta/screens/skills/widgets/skills_will_learn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkillsPage extends ConsumerWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
        elevation: 0,
        actions: [ThemeIconButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            SkillsMastered(),
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            SkillsLearning(),
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
            SkillsWillLearn(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
