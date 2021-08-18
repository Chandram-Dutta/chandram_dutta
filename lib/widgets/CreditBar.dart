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
      height: 200,
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "This website is developed and maintained by Chandram Dutta",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}

class MobileCreditBar extends StatelessWidget {
  const MobileCreditBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "This website is developed and maintained by Chandram Dutta",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
