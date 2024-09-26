import 'package:complete_store/core/common/widgets/functions/outline_error_message.dart';
import 'package:complete_store/core/common/widgets/functions/outline_for_enable_and_focus.dart';
import 'package:complete_store/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    this.filled = false,
    this.obscureText = false,
    this.readOnly = false,
    super.key,
    this.validator,
    this.fillColour,
    this.suffixIcon,
    this.hintText,
    this.keyboardType,
    this.hintStyle,
    this.overrideValidator = false,
    this.prefixIcon,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
  });

  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextEditingController controller;
  final bool filled;
  final Color? fillColour;
  final bool obscureText;
  final bool readOnly;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool overrideValidator;
  final TextStyle? hintStyle;
  final int? maxLength;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: context.color.textColor,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: context.color.textColor,
      ),
      validator: (value) {
        return validator!(value);
      },
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      readOnly: readOnly,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: outlineForEnableAndFocus(context),
        focusedBorder: outlineForEnableAndFocus(context),
        errorBorder: outlineErrorMethod(),
        focusedErrorBorder: outlineErrorMethod(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        filled: filled,
        fillColor: fillColour,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: hintStyle ??
            context.textStyle.copyWith(
              color: context.color.textColor,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
        errorStyle: context.textStyle.copyWith(
          color: Colors.red,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
