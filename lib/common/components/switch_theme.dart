import 'package:accessibilityapp/application/app_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Provider.of<AppStateNotifier>(context, listen: false).isDarkMode,
      onChanged: (_) {
        Provider.of<AppStateNotifier>(context, listen: false).switchTheme();
      },
    );
  }
}
