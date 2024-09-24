import 'package:complete_store/core/fonts/font_weight_helper.dart';
import 'package:complete_store/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello World",
          style: AppTextStyles.style25En.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
    );
  }
}
