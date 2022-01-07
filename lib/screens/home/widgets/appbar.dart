import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/screens/home/widgets/app_bar_switch.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetsTitle = [
      Text(
        "Chandram Dutta",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: RotationTransition(
            turns: new AlwaysStoppedAnimation(
                isDesktop(context, 500) ? 0 : 90 / 360),
            child: AppBarSwitch()),
      ),
      Text(
        "Flutter Zed",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20),
      )
    ];
    return isDesktop(context, 500)
        ? Row(
            children: widgetsTitle,
          )
        : Column(
            children: widgetsTitle,
          );
  }
}
