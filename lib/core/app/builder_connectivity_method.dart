import 'package:complete_store/core/app/connectivity/connectivity_controller.dart';
import 'package:flutter/material.dart';

Widget builderConnectivityMethod(context, widget) {
  return Scaffold(
    body: Builder(
      builder: (context) {
        ConnectivityController.instance.init();
        return widget!;
      },
    ),
  );
}
