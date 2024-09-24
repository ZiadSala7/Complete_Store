import 'package:complete_store/core/app/widgets/builder_connectivity_method.dart';
import 'package:complete_store/core/routes/app_router.dart';
import 'package:complete_store/core/styles/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        routerConfig: AppRouter.appRouter,
        debugShowCheckedModeBanner: false,
        theme: darkModeTheme(),
        builder: builderConnectivityMethod,
      ),
    );
  }
}
