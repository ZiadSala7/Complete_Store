import 'package:complete_store/core/styles/colors/dark_mode_colors.dart';
import 'package:complete_store/core/styles/colors/light_mode_colors.dart';
import 'package:complete_store/core/styles/themes/color_extensions.dart';
import 'package:flutter/material.dart';

ThemeData lightModeTheme() {
  return ThemeData(
    scaffoldBackgroundColor: LightModeColors.mainColor,
    extensions: const <ThemeExtension<dynamic>>[ColorExtensions.lightMode],
    useMaterial3: true,
  );
}

ThemeData darkModeTheme() {
  return ThemeData(
    scaffoldBackgroundColor: DarkModeColors.mainColor,
    extensions: const <ThemeExtension<dynamic>>[ColorExtensions.darkMode],
    useMaterial3: true,
  );
}
