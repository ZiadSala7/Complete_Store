import 'package:complete_store/core/app/cubit/mode_change/mode_change_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  getIt.registerFactory(ModeChangeCubit.new);
}
