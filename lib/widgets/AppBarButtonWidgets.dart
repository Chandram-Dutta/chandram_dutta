import 'package:chandram_dutta/widgets/AppBarButton.dart';
import 'package:chandram_dutta/widgets/UrlLauncher.dart';
import 'package:flutter/material.dart';

var appBarDesktopButtonsWidgets = <Widget>[
  AppBarDesktopButton(
    color: Color.fromRGBO(206, 62, 122, 1),
    title: "Instagram",
    function: () {
      launchUrl("https://instagram.com/chandram_dutta");
    },
    icon: Icons.info_outline_rounded,
  ),
  AppBarDesktopButton(
    color: Color.fromRGBO(93, 169, 221, 1),
    title: "Twitter",
    function: () {
      launchUrl("https://twitter.com/ChandramDutta");
    },
    icon: Icons.info_outline_rounded,
  ),
];

var appBarMobileButtonsWidgets = <Widget>[
  AppBarMobileButton(
    color: Color.fromRGBO(206, 62, 122, 1),
    title: "Instagram",
    function: () {
      launchUrl("https://instagram.com/chandram_dutta");
    },
    icon: Icons.info_outline_rounded,
  ),
  AppBarMobileButton(
    color: Color.fromRGBO(93, 169, 221, 1),
    title: "Twitter",
    function: () {
      launchUrl("https://twitter.com/ChandramDutta");
    },
    icon: Icons.info_outline_rounded,
  ),
];
