import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial(languageCode: "ar"));

  void changeLanguage(String languageCode) {
    emit(LanguageInitial(languageCode: languageCode));
  }
}
