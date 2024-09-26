import 'package:complete_store/core/extensions/app_extensions.dart';
import 'package:complete_store/features/auth/widgets/login/custom_auth_painter.dart';
import 'package:complete_store/features/auth/widgets/login/login_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h),
        painter: CustomAuthPainter(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
          ),
        ),
      ),
      body: const LoginScreenBody(),
    );
  }
}
