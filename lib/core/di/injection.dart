import 'package:dusks_burger_task/features/languages/data/local_data_sources/language_local_datasource.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:dusks_burger_task/features/languages/data/repo/language_repo_impl.dart';
import 'package:dusks_burger_task/features/languages/domain/repo/language_repo.dart';
import 'package:dusks_burger_task/features/languages/domain/use_cases/change_language_usecase.dart';
import 'package:dusks_burger_task/features/languages/domain/use_cases/get_saved_language_usecase.dart';
import 'package:dusks_burger_task/features/languages/presentation/manager/language_cubit/language_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final box = await Hive.openBox('settings');

  getIt.registerLazySingleton<LanguageLocalDataSource>(() => LanguageLocalDataSource(box));

  getIt.registerLazySingleton<LanguageRepo>(() => LanguageRepoImpl(languageLocalDataSource: getIt()));

  getIt.registerLazySingleton(()=> ChangeLanguageUsecase(languageRepo: getIt()));
  getIt.registerLazySingleton(() => GetSavedLanguageUseCase(getIt()));

  getIt.registerFactory(() => LanguageCubit(getIt(), getIt()));
}