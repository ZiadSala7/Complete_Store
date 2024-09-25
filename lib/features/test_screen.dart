import 'package:complete_store/core/fonts/font_weight_helper.dart';
import 'package:complete_store/core/styles/fonts/app_text_styles.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          S.of(context).app_name,
          style: AppTextStyles.style25En.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
      ),
    );
  }
}
