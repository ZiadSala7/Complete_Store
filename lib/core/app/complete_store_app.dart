import 'package:complete_store/core/app/connectivity_controller.dart';
import 'package:complete_store/core/screens/no_network_screen.dart';
import 'package:flutter/material.dart';

class CompleteStoreApp extends StatelessWidget {
  const CompleteStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (BuildContext context, bool value, Widget? child) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Asroo Store'),
              ),
            ),
            builder: (context, widget) {
              return Scaffold(
                body: Builder(
                  builder: (context) {
                    ConnectivityController.instance.init();
                    return widget!;
                  },
                ),
              );
            },
          );
        } else {
          return const NoNetworkScreen();
        }
      },
    );
  }
}
