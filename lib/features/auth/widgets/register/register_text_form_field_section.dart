import 'package:complete_store/constants.dart';
import 'package:complete_store/core/common/animation/animate_do.dart';
import 'package:complete_store/core/common/widgets/custom_text_field.dart';
import 'package:complete_store/core/utils/app_validation.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterTextFormFieldSection extends StatefulWidget {
  const RegisterTextFormFieldSection({super.key});

  @override
  State<RegisterTextFormFieldSection> createState() =>
      _RegisterTextFormFieldSectionState();
}

class _RegisterTextFormFieldSectionState
    extends State<RegisterTextFormFieldSection> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: commonDuration,
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).full_name,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                return value!.isNotEmpty ? null : S.of(context).valid_name;
              },
            ),
            SizedBox(height: 15.h),
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).your_email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                return (AppValidation.isEmailValid('')
                    ? null
                    : S.of(context).valid_email);
              },
            ),
            SizedBox(height: 15.h),
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).password,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isVisible,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: isVisible
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
