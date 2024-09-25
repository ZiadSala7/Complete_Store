import 'package:complete_store/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';

OutlineInputBorder outlineForEnableAndFocus(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: context.color.textFormBorder!),
  );
}
