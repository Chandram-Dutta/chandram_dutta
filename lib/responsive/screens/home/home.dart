import 'package:chandram_dutta/responsive/screens/home/widgets/app_bar_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Chandram Dutta"),
            AppBarSwitch(),
            Text("Flutter Zed")
          ],
        ),
      ),
    );
  }
}
