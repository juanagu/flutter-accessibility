import 'package:accessibilityapp/features/home/root_page.dart';
import 'package:accessibilityapp/features/on_boarding/introduction_page.dart';
import 'package:accessibilityapp/features/themes_samples/typographics/typographic_types_page.dart';
import 'package:flutter/material.dart';

import 'routes_name.dart';

class RoutesFactory {
  Map<String, WidgetBuilder> createDefaults() {
    return {
      RoutesName.initial: (context) => IntroductionPage(),
      RoutesName.home: (context) => RootPage(),
      RoutesName.typographic_types: (context) => TypographicTypesPage(),
    };
  }
}
