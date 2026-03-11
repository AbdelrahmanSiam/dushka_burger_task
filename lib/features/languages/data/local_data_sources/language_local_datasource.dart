import 'package:hive/hive.dart';

abstract class LanguageLocalDatasource {
  Future<void> saveLanguage(String code);
  String getSavedLanguage();
}


class LanguageLocalDataSourceImpl implements LanguageLocalDatasource {

  final Box box;

  LanguageLocalDataSourceImpl(this.box);

  Future<void> saveLanguage(String code) async {
    await box.put("language", code);
  }

  String getSavedLanguage() {
    return box.get("language", defaultValue: "ar");
  }
}