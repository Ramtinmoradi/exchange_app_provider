import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = enLocale;

  Locale get locale => _locale;

  bool get isPersian => _locale == faLocale;

  set locale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }

  void toggleLanguage() {
    if (_locale == enLocale) {
      locale = faLocale;
    } else {
      locale = enLocale;
    }
  }
}

Locale enLocale = const Locale('en', '');

Locale faLocale = const Locale('fa', '');
