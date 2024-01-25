import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test_project/providers/language_provider.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Theme.of(context).colorScheme.primary,
      activeTrackColor: Theme.of(context).colorScheme.background,
      inactiveThumbColor: Theme.of(context).colorScheme.inversePrimary,
      inactiveTrackColor: Theme.of(context).colorScheme.background,
      value: Provider.of<LanguageProvider>(context, listen: false).isPersian,
      onChanged: (value) {
        Provider.of<LanguageProvider>(context, listen: false).toggleLanguage();
      },
    );
  }
}
