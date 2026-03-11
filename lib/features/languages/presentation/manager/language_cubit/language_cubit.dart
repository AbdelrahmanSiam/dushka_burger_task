import 'package:bloc/bloc.dart';
import 'package:dusks_burger_task/features/languages/domain/use_cases/change_language_usecase.dart';
import 'package:dusks_burger_task/features/languages/domain/use_cases/get_saved_language_usecase.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class LanguageCubit extends Cubit<Locale> {
  final ChangeLanguageUsecase changeLanguageUseCase;
  final GetSavedLanguageUseCase getSavedLanguageUseCase;

  LanguageCubit(this.changeLanguageUseCase, this.getSavedLanguageUseCase)
    : super(Locale("ar"));

  void changeLanguage(String code) async {
    await changeLanguageUseCase(code);
    emit(Locale(code));
  }

  void loadSavedLanguage() {
    final code = getSavedLanguageUseCase();
    emit(Locale(code));
  }
}
