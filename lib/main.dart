import 'package:chandram_dutta/providers/misc_provider.dart';
import 'package:chandram_dutta/providers/theme_provider.dart';
import 'package:chandram_dutta/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ref.watch(themeProvider),
      title: ref.watch(isChandramProvider) ? 'Chandram Dutta' : 'Flutter Zed',
      home: HomePage(),
    );
  }
}
