import 'package:chandram_dutta/screens/home/widgets/theme_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../services/UrlLauncher.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blogs'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [ThemeIconButton()],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 92, 92, 92)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Blogs On",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          FaIcon(
                            FontAwesomeIcons.medium,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl("https://medium.com/@chandramdutta2004");
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Blogs On",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            height: 25,
                            width: 25,
                            child: Image.asset("assets/icons/hashnode.png"),
                          )
                        ],
                      ),
                      onPressed: () {
                        launchUrl("https://chandramcodes.hashnode.dev/");
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 0, 0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Blogs On",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          FaIcon(
                            FontAwesomeIcons.dev,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      onPressed: () {
                        launchUrl("https://dev.to/chandramdutta");
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Card(
            child: ListTile(
              title: Text("Flutter Riverpod - Part 2"),
              subtitle: Text("Hashnode"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                launchUrl(
                    "https://chandramcodes.hashnode.dev/flutter-riverpod-part-2");
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Hello Flutter with Riverpod 1.0.0!"),
              subtitle: Text("Hashnode"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                launchUrl(
                    "https://chandramcodes.hashnode.dev/hello-flutter-with-riverpod-100");
              },
            ),
          ),
        ],
      ),
    );
  }
}
