import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/screens/home/widgets/appbar.dart';
import 'package:chandram_dutta/screens/home/widgets/body.dart';
import 'package:chandram_dutta/screens/home/widgets/drawer.dart';
import 'package:chandram_dutta/screens/home/widgets/theme_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        drawer: HomePageDrawer(),
        appBar: AppBar(
          toolbarHeight: isDesktop(context, 500) ? 50 : 95,
          title: AppBarTitle(),
          centerTitle: true,
          backgroundColor: ref.watch(isChandramProvider)
              ? Colors.blue[500]
              : Colors.red[900],
          elevation: 0,
          actions: [ThemeIconButton()],
        ),
        body: Body());
  }
}
