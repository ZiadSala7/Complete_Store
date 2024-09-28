import 'package:complete_store/constants.dart';
import 'package:complete_store/core/app/cubit/mode_change/mode_change_cubit.dart';
import 'package:complete_store/core/app/di/injection_controller.dart';
import 'package:complete_store/core/common/animation/animate_do.dart';
import 'package:complete_store/core/common/widgets/custom_linear_button.dart';
import 'package:complete_store/core/common/widgets/custom_text_widget.dart';
import 'package:complete_store/core/extensions/app_extensions.dart';
import 'package:complete_store/core/fonts/font_weight_helper.dart';
import 'package:complete_store/core/services/prefs_key.dart';
import 'package:complete_store/core/services/shared_pref.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomModeAndLangChangeButton extends StatelessWidget {
  const CustomModeAndLangChangeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomFadeInLeft(
          duration: commonDuration,
          child: CustomLinearButton(
            onPressed: () async {
              SharedPref().setBoolean(PrefsKey.themeMode,
                  !BlocProvider.of<ModeChangeCubit>(context).isDark);
              getIt<ModeChangeCubit>().modeChange(
                sharedMode: SharedPref().getBoolean(PrefsKey.themeMode),
              );
            },
            child: const Icon(
              Icons.light_mode,
            ),
          ),
        ),
        CustomFadeInRight(
          duration: commonDuration,
          child: CustomLinearButton(
            onPressed: () {},
            height: 44.h,
            width: 120.w,
            child: CustomTextWidget(
              text: S.of(context).language,
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
