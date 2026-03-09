import 'package:dusks_burger_task/features/languages/domain/repo/language_repo.dart';

class GetSavedLanguageUseCase {

  final LanguageRepo languageRepo;

  GetSavedLanguageUseCase(this.languageRepo);

  String call() {
    return languageRepo.getSavedLanguage();
  }
}