import 'package:dusks_burger_task/features/languages/data/local_data_sources/language_local_datasource.dart';
import 'package:dusks_burger_task/features/languages/domain/repo/language_repo.dart';

class LanguageRepoImpl implements LanguageRepo{
  final LanguageLocalDataSource languageLocalDataSource;

  LanguageRepoImpl({required this.languageLocalDataSource});


  @override
  String getSavedLanguage() {
    return languageLocalDataSource.getSavedLanguage();
  }

  @override
  Future<void> saveLanguage(String code) {
    return languageLocalDataSource.saveLanguage(code);
  }

}