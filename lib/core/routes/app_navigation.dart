import 'package:flutter/material.dart';

class AppNavigation {
  static push(Widget widget, BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static pushReplacement(Widget widget, BuildContext context) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static pop(BuildContext context) {
    return Navigator.pop(context);
  }
}
