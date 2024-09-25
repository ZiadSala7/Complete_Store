import 'package:complete_store/core/styles/themes/color_extensions.dart';
import 'package:complete_store/core/styles/themes/my_assets_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension ContextExt on BuildContext {
  // color
  ColorExtensions get color => Theme.of(this).extension<ColorExtensions>()!;
  // assets
  MyAssetsExtensions get assets =>
      Theme.of(this).extension<MyAssetsExtensions>()!;
  // textStyle
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;
  // go_router
  Future<Object?> pushRouter(String path) {
    return GoRouter.of(this).push(path);
  }

  Future<Object?> pushReplacementRouter(String path) {
    return GoRouter.of(this).pushReplacement(path);
  }

  void popRouter() {
    return GoRouter.of(this).pop();
  }
}
