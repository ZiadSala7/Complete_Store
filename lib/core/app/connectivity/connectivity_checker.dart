import 'package:complete_store/core/app/connectivity/connectivity_controller.dart';
import 'package:complete_store/my_store_app.dart';
import 'package:flutter/material.dart';

class ConnectivityChecker extends StatelessWidget {
  const ConnectivityChecker({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (BuildContext context, bool value, Widget? child) {
        if (value) {
          return const MyStoreApp();
        } else {
          return const MyStoreApp();
        }
      },
    );
  }
}
