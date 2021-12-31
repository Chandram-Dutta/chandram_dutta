import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:chandram_dutta/responsive/screens/home/widgets/app_bar_switch.dart';
import 'package:chandram_dutta/responsive/screens/home/widgets/theme_icon_button.dart';
import 'package:chandram_dutta/themes/dark_theme.dart';
import 'package:chandram_dutta/themes/light_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          actions: [ThemeIconButton()],
          title: Row(
            children: [
              Text(
                "Chandram Dutta",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 20),
              ),
              AppBarSwitch(),
              Text(
                "Flutter Zed",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontSize: 20),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    )),
              ),
            )
          ],
        ));
  }
}
