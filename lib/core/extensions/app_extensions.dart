import 'package:complete_store/core/language/app_localizations.dart';
import 'package:complete_store/core/styles/themes/color_extensions.dart';
import 'package:complete_store/core/styles/themes/my_assets_extensions.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  // color
  ColorExtensions get color => Theme.of(this).extension<ColorExtensions>()!;
  // assets
  MyAssetsExtensions get assets =>
      Theme.of(this).extension<MyAssetsExtensions>()!;
  // textStyle
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  // localization
  String translate(String langkey) {
    return AppLocalizations.of(this)!.translate(langkey).toString();
  }
}
