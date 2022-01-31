import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final heightOfScreenProvider = Provider<double>((ref) {
  return window.physicalSize.height;
});

final isChandramProvider = StateProvider<bool>((ref) {
  return true;
});

final iconWidgetProvider = StateProvider<Widget?>((ref) {
  return SizedBox();
});
final iconNameProvider =StateProvider<String?>((ref) {
  return "";
});
