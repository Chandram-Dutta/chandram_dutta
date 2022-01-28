import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:neumorphic_container/neumorphic_container.dart';

class NeuLogoContainers extends ConsumerWidget {
  const NeuLogoContainers({Key? key, this.widget}) : super(key: key);

  final Widget? widget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: NeumorphicContainer(
        depth: 100,
        spread: 1,
        height: 75,
        width: 75,
        borderRadius: 5,
        primaryColor: ref.watch(isDarkThemeProvider)
            ? Theme.of(context).colorScheme.background
            : Theme.of(context).scaffoldBackgroundColor,
        borderThickness: 1,
        curvature: Curvature.flat,
        child: Center(child: widget),
      ),
    );
  }
}
