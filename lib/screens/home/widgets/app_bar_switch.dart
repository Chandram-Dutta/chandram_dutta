import 'package:chandram_dutta/providers/appbar_providers.dart';
import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppBarSwitch extends ConsumerStatefulWidget {
  const AppBarSwitch({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<AppBarSwitch> createState() => _AppBarSwitchState();
}

class _AppBarSwitchState extends ConsumerState<AppBarSwitch> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      trackColor: Theme.of(context).colorScheme.secondary,
      thumbColor: Theme.of(context).colorScheme.secondaryVariant,
      value: ref.watch(appBarSwitchProvider),
      onChanged: (bool value) {
        setState(() {
          if (ref.watch(appBarSwitchProvider)) {
            ref.read(appBarSwitchProvider.state).state = false;
            ref.read(isChandramProvider.state).state = true;
          } else if (!ref.watch(appBarSwitchProvider)) {
            ref.read(appBarSwitchProvider.state).state = true;
            ref.read(isChandramProvider.state).state = false;
          }
        });
      },
    );
  }
}
