import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:chandram_dutta/themes/dark_theme.dart';
import 'package:chandram_dutta/themes/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeIconButton extends ConsumerStatefulWidget {
  const ThemeIconButton({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ThemeIconButton> createState() => _ThemeIconButtonState();
}

class _ThemeIconButtonState extends ConsumerState<ThemeIconButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (Theme.of(context).brightness == Brightness.light) {
            setState(() {
              ref.read(themeIconProvider.state).state = CupertinoIcons.moon;
              ref.read(themeProvider.state).state = darkTheme;
            });
          } else {
            setState(() {
              ref.read(themeIconProvider.state).state = CupertinoIcons.sun_max;
              ref.read(themeProvider.state).state = lightTheme;
            });
          }
        },
        tooltip: "Change Theme",
        icon: Icon(
          ref.watch(themeIconProvider),
        ));
  }
}
