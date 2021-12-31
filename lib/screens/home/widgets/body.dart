import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Body extends ConsumerWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ref.watch(heightOfScreenProvider) * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Container(
              decoration: BoxDecoration(
                  color: ref.watch(isChandramProvider)
                      ? Colors.blue[500]
                      : Colors.red[900],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
