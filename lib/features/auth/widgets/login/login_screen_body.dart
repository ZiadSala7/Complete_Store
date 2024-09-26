import 'package:complete_store/features/auth/widgets/login/custom_auth_title_info.dart';
import 'package:complete_store/features/auth/widgets/login/custom_mode_and_lang_change_button.dart';
import 'package:complete_store/features/auth/widgets/login/login_text_form_field_section.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // upper login buttons to change mode and language
              const CustomModeAndLangChangeButton(),
              SizedBox(height: 40.h),
              // to show description texts of auth screen
              CustomAuthTitleInfo(
                title: S.of(context).login,
                description: S.of(context).welcome,
              ),
              SizedBox(height: 25.h),
              LoginTextFormFieldSection(),
            ],
          ),
        ),
      ),
    );
  }
}
