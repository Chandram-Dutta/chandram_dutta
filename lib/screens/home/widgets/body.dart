import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/screens/home/widgets/avatar.dart';
import 'package:chandram_dutta/screens/home/widgets/texts.dart';
import 'package:chandram_dutta/services/UrlLauncher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                        : Color.fromARGB(255, 255, 17, 0),
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
          ref.watch(isChandramProvider)
              ? Texts()
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: isDesktop(context, 700)
                        ? ref.watch(heightOfScreenProvider) * 0.45
                        : 200,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 255, 17, 0)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.youtube),
                                  SizedBox(width: 10),
                                  Text(
                                    "FlutterZed \nOn \nYoutube",
                                  ),
                                ],
                              ),
                              onPressed: () {
                                launchUrl(
                                    "https://www.youtube.com/channel/UCLmgkjCcj5t0QCZ9Ip-vpgw");
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 225, 48, 108)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(FontAwesomeIcons.instagram),
                                  SizedBox(width: 10),
                                  Text(
                                    "FlutterZed \nOn \nInstagram",
                                  ),
                                ],
                              ),
                              onPressed: () {
                                launchUrl(
                                    "https://www.instagram.com/flutter.zed/");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
