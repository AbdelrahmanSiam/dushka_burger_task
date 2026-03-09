abstract class LanguageRepo {
  Future<void> saveLanguage(String code);

  String getSavedLanguage();
}