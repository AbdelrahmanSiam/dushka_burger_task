part of 'language_cubit.dart';

@immutable
sealed class LanguageState {}

final class LanguageInitial extends LanguageState {
  final String languageCode;

  LanguageInitial({required this.languageCode});
}
