import 'package:complete_store/core/app/connectivity/connectivity_checker.dart';
import 'package:complete_store/core/app/di/injection_controller.dart';
import 'package:complete_store/core/app/env_variables.dart';
import 'package:complete_store/core/services/shared/shared_pref.dart';
import 'package:complete_store/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariables.instance.init(envType: EnvTypeEnum.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPref().instantiatePreferences();
  await setUpGetIt();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    runApp(const ConnectivityChecker());
  });
}
