// Remove slash comments and edit the page with quick fix

import 'package:flutter/material.dart';

class DeviceHelper {
  static bool _tablet = false;
  static bool _phone = false;

  static bool get isTablet => _tablet;
  static bool get isPhone => _phone;

  static MediaQueryData data =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window);
  static double shortestSide = data.size.shortestSide;
  static Future<void> deviceTypeChecker() async {
    if (shortestSide < 600) {
      _phone = true;
    } else {
      _tablet = true;
    }
  }
}
