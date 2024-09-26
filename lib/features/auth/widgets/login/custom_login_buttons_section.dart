import 'package:complete_store/constants.dart';
import 'package:complete_store/core/common/animation/animate_do.dart';
import 'package:complete_store/core/common/widgets/custom_linear_button.dart';
import 'package:complete_store/core/common/widgets/custom_text_widget.dart';
import 'package:complete_store/core/extensions/app_extensions.dart';
import 'package:complete_store/core/fonts/font_weight_helper.dart';
import 'package:complete_store/core/routes/app_router.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomLoginButtonsSection extends StatelessWidget {
  const CustomLoginButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: commonDuration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomLinearButton(
            onPressed: () {},
            child: CustomTextWidget(
              text: S.of(context).login,
              theme: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: InkWell(
              onTap: () {
                context.push(AppRouter.registerScreen);
              },
              child: CustomTextWidget(
                text: S.of(context).create_account,
                theme: context.textStyle.copyWith(
                  fontSize: 18.sp,
                  color: context.color.bluePinkLight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
