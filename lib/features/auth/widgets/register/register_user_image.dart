import 'package:complete_store/constants.dart';
import 'package:complete_store/core/common/animation/animate_do.dart';
import 'package:complete_store/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterUserImage extends StatelessWidget {
  const RegisterUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: commonDuration,
      child: CircleAvatar(
        radius: 40.r,
        child: Image.asset(AppImages.userAvatar),
      ),
    );
  }
}
