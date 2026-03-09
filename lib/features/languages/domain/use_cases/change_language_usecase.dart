import 'package:dusks_burger_task/features/languages/domain/repo/language_repo.dart';

class ChangeLanguageUsecase {
  final LanguageRepo languageRepo;

  ChangeLanguageUsecase({required this.languageRepo});
  Future<void> call (String code){
  return languageRepo.saveLanguage(code);
  }
}