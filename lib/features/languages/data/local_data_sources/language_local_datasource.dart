import 'package:hive/hive.dart';

class LanguageLocalDataSource {

  final Box box;

  LanguageLocalDataSource(this.box);

  Future<void> saveLanguage(String code) async {
    await box.put("language", code);
  }

  String getSavedLanguage() {
    return box.get("language", defaultValue: "ar");
  }
}