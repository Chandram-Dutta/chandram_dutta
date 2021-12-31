import 'package:chandram_dutta/screens/home/widgets/app_bar_switch.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Chandram Dutta",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
        ),
        AppBarSwitch(),
        Text(
          "Flutter Zed",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
        )
      ],
    );
  }
}
