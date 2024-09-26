import 'package:complete_store/features/auth/widgets/common/custom_auth_title_info.dart';
import 'package:complete_store/features/auth/widgets/common/custom_mode_and_lang_change_button.dart';
import 'package:complete_store/features/auth/widgets/register/register_buttons_section.dart';
import 'package:complete_store/features/auth/widgets/register/register_text_form_field_section.dart';
import 'package:complete_store/features/auth/widgets/register/register_user_image.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

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
                title: S.of(context).sign_up,
                description: S.of(context).sign_up_welcome,
              ),
              SizedBox(height: 15.h),
              const RegisterUserImage(),
              SizedBox(height: 25.h),
              // text form field section
              const RegisterTextFormFieldSection(),
              SizedBox(height: 25.h),
              // bottom buttons
              const RegisterButtonsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
