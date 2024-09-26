import 'package:complete_store/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';

class MyAssetsExtensions extends ThemeExtension<MyAssetsExtensions> {
  const MyAssetsExtensions({
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<MyAssetsExtensions> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return MyAssetsExtensions(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<MyAssetsExtensions> lerp(
    covariant ThemeExtension<MyAssetsExtensions>? other,
    double t,
  ) {
    if (other is! MyAssetsExtensions) {
      return this;
    }
    return MyAssetsExtensions(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const MyAssetsExtensions dark = MyAssetsExtensions(
    bigNavBar: AppImages.bigIconNavBarDark,
    homeBg: AppImages.homeBgDark,
  );
  static const MyAssetsExtensions light = MyAssetsExtensions(
    bigNavBar: AppImages.bigIconNavBarLight,
    homeBg: AppImages.homeBgLight,
  );
}
