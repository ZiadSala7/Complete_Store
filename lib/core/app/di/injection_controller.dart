import 'package:complete_store/core/app/cubit/mode_change/mode_change_cubit.dart';
import 'package:complete_store/core/services/graphql/api_service.dart';
import 'package:complete_store/core/services/graphql/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  final dio = DioFactory.getDio();

  getIt.registerFactory(ModeChangeCubit.new);
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
}
