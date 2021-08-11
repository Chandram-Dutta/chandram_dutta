import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/widgets/AppBarButtonWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: isDesktop(context) ? false : true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Chandram Dutta",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: isDesktop(context) ? appBarDesktopButtonsWidgets : null,
      ),
      body: null,
    );
  }
}
