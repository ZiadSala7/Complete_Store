import 'package:complete_store/core/styles/themes/color_extensions.dart';
import 'package:complete_store/core/styles/themes/my_assets_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension on BuildContext {
  ColorExtensions get color => Theme.of(this).extension<ColorExtensions>()!;
  MyAssetsExtensions get assets =>
      Theme.of(this).extension<MyAssetsExtensions>()!;
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
