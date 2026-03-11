import 'package:hive/hive.dart';

abstract class LanguageLocalDatasource {
  Future<void> saveLanguage(String code);
  String getSavedLanguage();
}

class LanguageLocalDataSourceImpl implements LanguageLocalDatasource {
  final Box box;

  LanguageLocalDataSourceImpl(this.box);
  @override
  Future<void> saveLanguage(String code) async {
    await box.put("language", code);
  }

  @override
  String getSavedLanguage() {
    return box.get("language", defaultValue: "ar");
  }
}
