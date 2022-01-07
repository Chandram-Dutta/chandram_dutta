import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends ConsumerWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
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
    );
  }
}
