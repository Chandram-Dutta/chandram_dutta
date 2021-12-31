import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/screens/home/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'Developer, ',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: 70),
                ),
                TextSpan(
                  text: 'Designer, ',
                  style: Theme.of(context).textTheme.headline4,
                ),
                TextSpan(
                  text: 'Creator, ',
                  style: Theme.of(context).textTheme.headline3,
                ),
                TextSpan(
                  text: 'Guitarist & ',
                  style: Theme.of(context).textTheme.headline2,
                ),
                TextSpan(
                  text: '\nMore',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: 150),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Container(
              color: ref.watch(isDarkThemeProvider)
                  ? Colors.grey[400]
                  : Colors.grey[800],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Open Up The Drawer to Know More About Me!!!",
                    style: TextStyle(
                        color: ref.watch(isDarkThemeProvider)
                            ? Colors.black
                            : Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Made with 💙 using",
                    style: TextStyle(
                        color: ref.watch(isDarkThemeProvider)
                            ? Colors.black
                            : Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlutterLogo(
                        size: 42,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "&",
                          style: TextStyle(
                              color: ref.watch(isDarkThemeProvider)
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                        width: 35,
                        child: SvgPicture.asset("assets/riverpod.svg"),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
