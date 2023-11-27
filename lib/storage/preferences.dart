import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'preferences.g.dart';

const languages = [
  Language(langValue: 'en', langName: 'English'),
  Language(langValue: 'fi', langName: 'Suomi'),
];

String getLocaleFromValue(String value) {
  switch (value) {
    case 'Suomi':
      return 'fi';
    case 'Русский':
      return 'ru';
    default:
      return 'en';
  }
}

enum Lang { en, fi }

enum Theme { light, dark }

class Language {
  const Language({
    required this.langValue,
    required this.langName,
  });
  final String langValue;
  final String langName;
}

@HiveType(typeId: 1)
class Preferences {
  Preferences({
    this.language = 'en',
    this.theme = 'light',
  });

  @HiveField(0)
  String language;

  @HiveField(1)
  final String theme;
}
