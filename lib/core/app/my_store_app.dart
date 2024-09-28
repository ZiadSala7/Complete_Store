import 'package:complete_store/core/app/builder_connectivity_method.dart';
import 'package:complete_store/core/app/cubit/mode_change/mode_change_cubit.dart';
import 'package:complete_store/core/app/cubit/mode_change/mode_change_states.dart';
import 'package:complete_store/core/app/di/injection_controller.dart';
import 'package:complete_store/core/language/localization_delegates_method.dart';
import 'package:complete_store/core/routes/app_router.dart';
import 'package:complete_store/core/services/prefs_key.dart';
import 'package:complete_store/core/services/shared_pref.dart';
import 'package:complete_store/core/styles/themes/app_themes.dart';
import 'package:complete_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          create: (context) => getIt<ModeChangeCubit>()
            ..modeChange(
              sharedMode: SharedPref().getBoolean(PrefsKey.themeMode),
            ),
        ),
      ],
      child: BlocBuilder<ModeChangeCubit, ModeChangeStates>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          final modeCubit = BlocProvider.of<ModeChangeCubit>(context);
          return ScreenUtilInit(
            child: MaterialApp.router(
              routerConfig: AppRouter.appRouter,
              debugShowCheckedModeBanner: false,
              theme: modeCubit.isDark ? darkModeTheme() : lightModeTheme(),
              builder: builderConnectivityMethod,
              localizationsDelegates: localizationDelegatesMethod,
              supportedLocales: S.delegate.supportedLocales,
            ),
          );
        },
      ),
    );
  }
}
