import 'package:complete_store/constants.dart';
import 'package:complete_store/core/common/animation/animate_do.dart';
import 'package:complete_store/core/common/widgets/custom_text_widget.dart';
import 'package:complete_store/core/extensions/app_extensions.dart';
import 'package:complete_store/core/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthTitleInfo extends StatelessWidget {
  final String title;
  final String description;
  const CustomAuthTitleInfo({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: commonDuration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextWidget(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 30.sp,
              fontWeight: FontWeightHelper.bold,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomTextWidget(
            text: description,
            theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.medium,
            ),
          ),
        ],
      ),
    );
  }
}
