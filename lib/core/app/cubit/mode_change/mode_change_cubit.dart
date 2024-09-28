import 'package:complete_store/core/app/cubit/mode_change/mode_change_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModeChangeCubit extends Cubit<ModeChangeStates> {
  ModeChangeCubit() : super(DarkModeState());

  bool isDark = true;
  modeChange({required bool? sharedMode}) {
    isDark = sharedMode ?? false;
    emit(isDark ? DarkModeState() : LightModeState());
  }
}
