import 'package:accessibilityapp/features/home/root_page.dart';
import 'package:accessibilityapp/features/on_boarding/on_boarding_page.dart';
import 'package:accessibilityapp/features/testing_tools/contrast_samples_page.dart';
import 'package:accessibilityapp/features/themes_samples/typographics/typographic_types_page.dart';
import 'package:flutter/material.dart';

import 'routes_name.dart';

class RoutesFactory {
  Map<String, WidgetBuilder> createDefaults() {
    return {
      RoutesName.initial: (context) => OnBoardingPage(),
      RoutesName.home: (context) => RootPage(),
      RoutesName.typographic_types: (context) => TypographicTypesPage(),
      RoutesName.contrast_samples: (context) => ContrastSamplePage(),
    };
  }
}
