import 'package:flutter/material.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Some Of My Projects",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 48)),
        ProjectCard(
          cardColor: Colors.orange,
          appName: "Calc X",
        ),
        ProjectCard(
          cardColor: Colors.grey,
          appName: "Translator",
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    this.appName,
    this.cardColor,
    Key? key,
  }) : super(key: key);

  final Color? cardColor;
  final String? appName;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: cardColor,
        margin: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Placeholder(
              fallbackHeight: 500,
              fallbackWidth: 500,
            ),
            Column(
              children: [
                Text(
                  appName.toString(),
                  style: TextStyle(fontSize: 48),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Open",
                    ))
              ],
            )
          ],
        ));
  }
}
