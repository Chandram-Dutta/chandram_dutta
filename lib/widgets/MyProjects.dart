import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/services/UrlLauncher.dart';
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
          picture: "assets/myprojects/CalcX.png",
          appGitHub: "https://github.com/Chandram-Dutta/CalcX",
          appDescription:
              "Lightweight And Beautiful Calculator with Theme Changing \nCapabilities made using Java Swing.",
        ),
        ProjectCard(
          cardColor: Colors.blue[900],
          appName: "Translator",
          picture: "assets/myprojects/Translator.png",
          appGitHub: "https://github.com/Chandram-Dutta/translator_linux",
          appDescription:
              "A Translator built using Flutter & Google Translator API \nfollowing the Yaru Design Guidelines of Ubuntu.",
        ),
        ProjectCard(
          cardColor: Colors.redAccent,
          appName: "DebConf",
          picture: "assets/myprojects/debconf.png",
          appGitHub: "https://github.com/Chandram-Dutta/debconf",
          appDescription:
              "A Modern Looking App built using Flutter and \naimed at being Cross-Platform \nand simple to use For DebConf Schedules & News",
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    this.appName,
    this.appGitHub,
    this.appDescription,
    this.cardColor,
    this.picture,
    Key? key,
  }) : super(key: key);

  final Color? cardColor;
  final String? appName;
  final String? appDescription;
  final String? picture;

  final String? appGitHub;

  @override
  Widget build(BuildContext context) {
    return isDesktop(context)
        ? Card(
            elevation: 50,
            color: cardColor,
            margin: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(
                      picture.toString(),
                      fit: BoxFit.contain,
                    )),
                Column(
                  children: [
                    Text(
                      appName.toString(),
                      style: TextStyle(fontSize: 48),
                    ),
                    Text(
                      appDescription.toString(),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          launchUrl(appGitHub.toString());
                        },
                        child: Text(
                          "On Github",
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black,
                        )),
                      ),
                    ),
                  ],
                )
              ],
            ))
        : Card(
            elevation: 50,
            color: cardColor,
            margin: EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset(
                      picture.toString(),
                      fit: BoxFit.contain,
                    )),
                Column(
                  children: [
                    Text(
                      appName.toString(),
                      style: TextStyle(fontSize: 48),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        appDescription.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        onPressed: () {
                          launchUrl(appGitHub.toString());
                        },
                        child: Text(
                          "On Github",
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.black,
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ));
  }
}
