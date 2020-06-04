import 'package:accessibilityapp/application/app_state_notifier.dart';
import 'package:accessibilityapp/application/routes/routes_factory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes/routes_name.dart';
import 'themes/themes.dart';

class MainApplication extends StatelessWidget {
  final Widget testWidget;

  const MainApplication({
    Key key,
    this.testWidget,
  }) : super(key: key);

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
    var setup = MaterialAppSetup(testWidget);
    return MaterialApp(
      title: 'Flutter Accessibility',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: setup.getHome(),
      initialRoute: setup.getInitialRoute(),
      routes: setup.getRoutes(),
    );
  }
}

class MaterialAppSetup {
  final Widget testWidget;
  bool isTesting;

  MaterialAppSetup(
    this.testWidget,
  ) {
    isTesting = this.testWidget != null;
  }

  Widget getHome() {
    return isTesting ? testWidget : null;
  }

  String getInitialRoute() {
    return isTesting ? null : RoutesName.initial;
  }

  Map<String, WidgetBuilder> getRoutes() {
    return isTesting ? null : RoutesFactory().createDefaults();
  }
}
