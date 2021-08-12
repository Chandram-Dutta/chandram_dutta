import 'dart:ui';

import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/widgets/MobileNavBar.dart';
import 'package:flutter/material.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MobileNavBar(),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.red,
                ],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "Chandram Dutta",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isDesktop(context) ? 100 : 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
