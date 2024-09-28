import 'package:complete_store/core/app/builder_connectivity_method.dart';
import 'package:complete_store/core/app/cubit/mode_change/mode_change_cubit.dart';
import 'package:complete_store/core/routes/app_router.dart';
import 'package:complete_store/core/styles/themes/app_themes.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStoreApp extends StatelessWidget {
  const MyStoreApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ModeChangeCubit(),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp.router(
          routerConfig: AppRouter.appRouter,
          debugShowCheckedModeBanner: false,
          theme: darkModeTheme(),
          builder: builderConnectivityMethod,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        ),
      ),
    );
  }
}
