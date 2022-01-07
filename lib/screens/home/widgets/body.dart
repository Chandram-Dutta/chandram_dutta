import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/screens/home/widgets/avatar.dart';
import 'package:chandram_dutta/screens/home/widgets/footer.dart';
import 'package:chandram_dutta/screens/home/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Body extends ConsumerWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> bodyWidgets = [
      Avatar(),
      Text(
        ref.watch(isChandramProvider)
            ? "Hello!\nI am Chandram Dutta"
            : "Hello!\nI am Flutter Zed",
        style: Theme.of(context)
            .textTheme
            .headline1
            ?.copyWith(fontSize: isDesktop(context, 1000) ? 50 : 25),
        textAlign: isDesktop(context, 700) ? TextAlign.left : TextAlign.center,
      ),
      isDesktop(context, 1000)
          ? SizedBox()
          : SizedBox(
              height: 100,
            )
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: isDesktop(context, 700)
                ? ref.watch(heightOfScreenProvider) * 0.5
                : null,
            width: MediaQuery.of(context).size.width,
            child: Container(
                decoration: BoxDecoration(
                    color: ref.watch(isChandramProvider)
                        ? Colors.blue[500]
                        : Colors.red[900],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    )),
                child: isDesktop(context, 700)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: bodyWidgets,
                      )
                    : Column(
                        children: bodyWidgets,
                      )),
          ),
          Texts(),
          Footer()
        ],
      ),
    );
  }
}
