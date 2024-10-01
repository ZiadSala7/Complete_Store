import 'package:complete_store/core/app/builder_connectivity_method.dart';
import 'package:complete_store/core/app/cubit/mode_change/mode_change_cubit.dart';
import 'package:complete_store/core/app/cubit/mode_change/mode_change_states.dart';
import 'package:complete_store/core/app/di/injection_controller.dart';
import 'package:complete_store/core/services/shared/prefs_key.dart';
import 'package:complete_store/core/services/shared/shared_pref.dart';
import 'package:complete_store/core/styles/themes/app_themes.dart';
import 'package:complete_store/features/auth/screens/login_screen.dart';
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
          create: (context) => getIt<ModeChangeCubit>()
            ..langChange(
              sharedLang: SharedPref().getBoolean(PrefsKey.isEnglish),
            )
            ..modeChange(
              sharedMode: SharedPref().getBoolean(PrefsKey.themeMode),
            ),
        ),
      ],
      child: ScreenUtilInit(
        child: BlocBuilder<ModeChangeCubit, ModeChangeStates>(
          buildWhen: (previous, current) {
            return previous != current;
          },
          builder: (context, state) {
            final cubit = BlocProvider.of<ModeChangeCubit>(context);
            return MaterialApp(
              home: const LoginScreen(),
              debugShowCheckedModeBanner: false,
              theme: cubit.isDark ? darkModeTheme() : lightModeTheme(),
              locale: cubit.isEnglish ? const Locale('en') : const Locale('ar'),
              builder: builderConnectivityMethod,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'),
                Locale('ar'),
              ],
            );
          },
        ),
      ),
    );
  }
}
