import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final heightOfScreenProvider = Provider<double>((ref) {
  return window.physicalSize.height;
});
