import 'package:complete_store/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';

class NoNetworkScreen extends StatelessWidget {
  const NoNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.noNetwork,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
