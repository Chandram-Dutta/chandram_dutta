import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(children: [
        ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                ),
                child: Text("Menu", style: TextStyle(fontSize: 25))),
            ListTile(
              title: const Text('Skills'),
              onTap: () {
                Navigator.pushNamed(context, '/skills');
              },
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              title: const Text('Blog'),
              onTap: () {
                Navigator.pushNamed(context, '/blogs');
              },
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              title: const Text('Social'),
              onTap: () {
                Navigator.pushNamed(context, '/socials');
              },
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
            ListTile(
              title: const Text('Projects & Works'),
              onTap: () {
                Navigator.pushNamed(context, '/projects');
              },
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
              ),
              Text("Made with 💙 using"),
              FlutterLogo(
                size: 32,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Chandram Dutta"),
              Text("© 2020-2022"),
            ],
          ),
        )
      ]),
    );
  }
}
