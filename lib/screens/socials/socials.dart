import 'package:chandram_dutta/screens/home/widgets/theme_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialsPage extends StatelessWidget {
  const SocialsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Social"),
        actions: [
          ThemeIconButton(),
        ],
      ),
      body: Wrap(children: [
        MaterialButton(
          child: Row(
            children: [
              FaIcon(FontAwesomeIcons.instagram),
              Text("Instagram"),
            ],
          ),
          onPressed: () {},
        )
      ]),
    );
  }
}
