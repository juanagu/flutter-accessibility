import 'package:accessibilityapp/features/get_banners/banner_carousel.dart';
import 'package:accessibilityapp/features/get_main_categories/category_list.dart';
import 'package:flutter/material.dart';

import 'features/get_widget_catalog/widget_catalog_grid.dart';
import 'features/on_boarding/introduction_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Accessibility',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroductionPage(),
    );
  }
}