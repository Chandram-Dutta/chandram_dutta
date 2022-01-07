import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'Developer, ',
            style:
                Theme.of(context).textTheme.headline1?.copyWith(fontSize: 70),
          ),
          TextSpan(
            text: 'Designer, ',
            style: Theme.of(context).textTheme.headline4,
          ),
          TextSpan(
            text: 'Creator, ',
            style: Theme.of(context).textTheme.headline3,
          ),
          TextSpan(
            text: 'Guitarist & ',
            style: Theme.of(context).textTheme.headline2,
          ),
          TextSpan(
            text: '\nMore',
            style:
                Theme.of(context).textTheme.headline1?.copyWith(fontSize: 150),
          ),
        ],
      ),
    );
  }
}
