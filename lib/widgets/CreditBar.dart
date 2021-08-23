import 'package:chandram_dutta/licenseconst.dart';
import 'package:chandram_dutta/responsive/responsive.dart';
import 'package:chandram_dutta/services/SendMail.dart';
import 'package:chandram_dutta/services/UrlLauncher.dart';
import 'package:chandram_dutta/widgets/Avatar.dart';
import 'package:flutter/material.dart';

class CreditBar extends StatelessWidget {
  const CreditBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: isDesktop(context) ? 200 : null,
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: isDesktop(context) ? DesktopCreditBar() : MobileCreditBar(),
    );
  }
}

class DesktopCreditBar extends StatelessWidget {
  const DesktopCreditBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This website is developed and maintained by \nChandram Dutta",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Spacer(),
              MadeWithFlutter(),
            ],
          ),
          CreditBarButton()
        ],
      ),
    );
  }
}

class CreditBarButton extends StatelessWidget {
  const CreditBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationIcon: CircleAvatar(
            backgroundImage: AssetImage("assets/ChandramPhoto.jpg"),
            radius: 48,
          ),
          applicationName: "Chandram Dutta",
          applicationLegalese: mitLicense,
          children: [
            TextButton(
              onPressed: () {
                launchUrl("https://github.com/Chandram-Dutta/chandram_dutta");
              },
              child: Text("Source Code @ GitHub"),
            ),
            TextButton(
                onPressed: () {
                  sendMail();
                },
                child: Text("Report Bug Or Request Feature")),
          ],
        );
      },
      child: Text("Report Bug / Licenses / Source Code"),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.red[900]),
      ),
    );
  }
}

class MobileCreditBar extends StatelessWidget {
  const MobileCreditBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "This website is developed and maintained by \nChandram Dutta",
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          MadeWithFlutter(),
          SizedBox(
            height: 20,
          ),
          CreditBarButton()
        ],
      ),
    );
  }
}

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Made with 💙 using",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        FlutterLogo(
          size: 128,
        ),
      ],
    );
  }
}
