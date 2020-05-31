import 'package:accessibilityapp/application/app_state_notifier.dart';
import 'package:accessibilityapp/application/routes/routes_factory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes/routes_name.dart';
import 'themes/themes.dart';

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStateNotifier(),
      child: _wrapperConsumerApp(),
    );
  }

  Widget _wrapperConsumerApp() {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return _buildApp(appState.isDarkMode);
      },
    );
  }

  MaterialApp _buildApp(bool isDarkMode) {
    return MaterialApp(
      title: 'Flutter Accessibility',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      initialRoute: RoutesName.initial,
      routes: RoutesFactory().createDefaults(),
    );
  }
}
