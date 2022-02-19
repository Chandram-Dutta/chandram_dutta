import 'package:chandram_dutta/constants/skills_constants.dart';
import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SkillDetailPage extends ConsumerWidget {
  const SkillDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(iconNameProvider).toString()),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 20,
          ),
          Container(child: ref.watch(iconWidgetProvider)),
          Text(skillsConstants[ref.watch(indexNumberProvider)!.toInt()]),
        ],
      ),
    );
  }
}
