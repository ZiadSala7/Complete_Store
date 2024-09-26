import 'package:complete_store/core/styles/colors/dark_mode_colors.dart';
import 'package:complete_store/core/styles/colors/light_mode_colors.dart';
import 'package:flutter/material.dart';

class ColorExtensions extends ThemeExtension<ColorExtensions> {
  final Color? mainColor;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;

  const ColorExtensions({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });

  @override
  ThemeExtension<ColorExtensions> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
  }) {
    return ColorExtensions(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  @override
  ThemeExtension<ColorExtensions> lerp(
      covariant ThemeExtension<ColorExtensions>? other, double t) {
    return (other is! ColorExtensions
        ? this
        : ColorExtensions(
            mainColor: mainColor,
            bluePinkDark: bluePinkDark,
            bluePinkLight: bluePinkLight,
            textColor: textColor,
            textFormBorder: textFormBorder,
            navBarbg: navBarbg,
            navBarSelectedTab: navBarSelectedTab,
            containerShadow1: containerShadow1,
            containerShadow2: containerShadow2,
            containerLinear1: containerLinear1,
            containerLinear2: containerLinear2,
          ));
  }

  static const ColorExtensions darkMode = ColorExtensions(
    mainColor: DarkModeColors.mainColor,
    bluePinkDark: DarkModeColors.blueDark,
    bluePinkLight: DarkModeColors.blueLight,
    textColor: DarkModeColors.white,
    textFormBorder: DarkModeColors.blueLight,
    navBarbg: DarkModeColors.navBarDark,
    navBarSelectedTab: DarkModeColors.white,
    containerShadow1: DarkModeColors.black1,
    containerShadow2: DarkModeColors.black2,
    containerLinear1: DarkModeColors.black1,
    containerLinear2: DarkModeColors.black2,
  );

  static const ColorExtensions lightMode = ColorExtensions(
    mainColor: LightModeColors.mainColor,
    bluePinkDark: LightModeColors.pinkDark,
    bluePinkLight: LightModeColors.pinkLight,
    textColor: LightModeColors.black,
    textFormBorder: LightModeColors.pinkLight,
    navBarbg: LightModeColors.mainColor,
    navBarSelectedTab: LightModeColors.pinkDark,
    containerShadow1: LightModeColors.white,
    containerShadow2: LightModeColors.white,
    containerLinear1: LightModeColors.pinkDark,
    containerLinear2: LightModeColors.pinkLight,
  );
}
