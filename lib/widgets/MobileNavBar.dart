import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/widgets/AppBarButtonWidgets.dart';
import 'package:flutter/material.dart';


class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDesktop(context)
        ? Row()
        : Wrap(
            children: appBarMobileButtonsWidgets,
          );
  }
}
