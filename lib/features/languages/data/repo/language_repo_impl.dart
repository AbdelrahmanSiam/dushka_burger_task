import 'package:dusks_burger_task/features/languages/data/local_data_sources/language_local_datasource.dart';
import 'package:dusks_burger_task/features/languages/domain/repo/language_repo.dart';

class LanguageRepoImpl implements LanguageRepo{
  final LanguageLocalDataSourceImpl languageLocalDataSourceImpl;

  LanguageRepoImpl({required this.languageLocalDataSourceImpl});


  @override
  String getSavedLanguage() {
    return languageLocalDataSourceImpl.getSavedLanguage();
  }

  @override
  Future<void> saveLanguage(String code) {
    return languageLocalDataSourceImpl.saveLanguage(code);
  }

}