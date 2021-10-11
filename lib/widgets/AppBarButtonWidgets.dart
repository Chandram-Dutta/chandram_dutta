import 'package:chandram_dutta/services/SendMail.dart';
import 'package:chandram_dutta/widgets/AppBarButton.dart';
import 'package:chandram_dutta/services/UrlLauncher.dart';
import 'package:flutter/material.dart';

var appBarDesktopButtonsWidgets = <Widget>[
  AppBarDesktopButton(
    color: Colors.orange,
    title: "Mail",
    function: () {
      sendMail();
    },
    icon: "assets/icons/email.png",
  ),
  AppBarDesktopButton(
    color: Color.fromRGBO(206, 62, 122, 1),
    title: "Instagram",
    function: () {
      launchUrl("https://instagram.com/chandram_codes");
    },
    icon: "assets/icons/instagram-logo.png",
  ),
  AppBarDesktopButton(
    color: Color.fromRGBO(93, 169, 221, 1),
    title: "Twitter",
    function: () {
      launchUrl("https://twitter.com/ChandramDutta");
    },
    icon: "assets/icons/twitter.png",
  ),
  AppBarDesktopButton(
    color: Colors.grey[300],
    title: "GitHub",
    function: () {
      launchUrl("https://github.com/Chandram-Dutta");
    },
    icon: "assets/icons/github.png",
  ),
];

var appBarMobileButtonsWidgets = <Widget>[
  AppBarMobileButton(
    color: Colors.white,
    title: "Mail",
    function: () {
      sendMail();
    },
    icon: "assets/icons/email.png",
  ),
  AppBarMobileButton(
    color: Color.fromRGBO(206, 62, 122, 1),
    title: "Instagram",
    function: () {
      launchUrl("https://instagram.com/chandram_dutta");
    },
    icon: "assets/icons/instagram-logo.png",
  ),
  AppBarMobileButton(
    color: Color.fromRGBO(93, 169, 221, 1),
    title: "Twitter",
    function: () {
      launchUrl("https://twitter.com/ChandramDutta");
    },
    icon: "assets/icons/twitter.png",
  ),
  AppBarMobileButton(
    color: Colors.black,
    title: "GitHub",
    function: () {
      launchUrl("https://github.com/Chandram-Dutta");
    },
    icon: "assets/icons/github.png",
  ),
];
