import 'package:complete_store/core/styles/images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterUserImage extends StatelessWidget {
  const RegisterUserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40.r,
      child: Image.asset(AppImages.userAvatar),
    );
  }
}
