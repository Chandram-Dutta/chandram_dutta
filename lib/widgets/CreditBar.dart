import 'package:chandram_dutta/responsive/responsive.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "This website is developed and maintained by \nChandram Dutta",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Made with 💙 with",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              FlutterLogo(
                size: 128,
              ),
            ],
          )
        ],
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ],
      ),
    );
  }
}
