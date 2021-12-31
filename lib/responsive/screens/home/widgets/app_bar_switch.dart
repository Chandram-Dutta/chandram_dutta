import 'package:chandram_dutta/providers/appbar_providers.dart';
import 'package:flutter/cupertino.dart';
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
      value: ref.watch(appBarSwitchProvider),
      onChanged: (bool value) {
        setState(() {
          if (ref.watch(appBarSwitchProvider)) {
            ref.read(appBarSwitchProvider.state).state = false;
          } else if (!ref.watch(appBarSwitchProvider)) {
            ref.read(appBarSwitchProvider.state).state = true;
          }
        });
      },
    );
  }
}
