import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MarketViewPage extends StatelessWidget {
  const MarketViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            AppLocalizations.of(context)!.marketView,
          ),
        ),
      ),
    );
  }
}
