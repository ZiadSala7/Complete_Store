import 'package:complete_store/core/styles/colors/dark_mode_colors.dart';
import 'package:complete_store/core/styles/colors/light_mode_colors.dart';
import 'package:flutter/material.dart';

class ColorExtensions extends ThemeExtension<ColorExtensions> {
  final Color? mainColor;
  const ColorExtensions({required this.mainColor});

  @override
  ThemeExtension<ColorExtensions> copyWith({Color? mainColor}) {
    return ColorExtensions(mainColor: mainColor);
  }

  @override
  ThemeExtension<ColorExtensions> lerp(
      covariant ThemeExtension<ColorExtensions>? other, double t) {
    return (other is! ColorExtensions
        ? this
        : ColorExtensions(mainColor: mainColor));
  }

  static const ColorExtensions darkMode =
      ColorExtensions(mainColor: DarkModeColors.mainColor);

  static const ColorExtensions lightMode =
      ColorExtensions(mainColor: LightModeColors.mainColor);
}
