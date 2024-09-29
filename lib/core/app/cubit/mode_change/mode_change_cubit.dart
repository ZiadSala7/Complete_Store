import 'package:complete_store/core/app/cubit/mode_change/mode_change_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModeChangeCubit extends Cubit<ModeChangeStates> {
  ModeChangeCubit() : super(DarkModeState());

  bool isDark = true;
  bool isEnglish = true;

  modeChange({required bool? sharedMode}) {
    isDark = sharedMode ?? false;
    emit(isDark ? DarkModeState() : LightModeState());
  }

  langChange({required bool? sharedLang}) {
    isEnglish = sharedLang ?? false;
    emit(isEnglish ? EnglishLanguageState() : ArabicLanguageState());
  }
}
