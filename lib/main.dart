import 'package:accessibilityapp/features/get_banners/banner_carousel.dart';
import 'package:accessibilityapp/features/get_main_categories/category_list.dart';
import 'package:flutter/material.dart';

import 'features/get_widget_catalog/widget_catalog_grid.dart';

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
      home: MyHomePage(title: 'Flutter Accessibility'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Flutter App'),
          ),
          SliverToBoxAdapter(
            child: BannerCarousel(),
          ),
          SliverToBoxAdapter(
            child: CategoryList(),
          ),
          WidgetCatalogGrid(),
        ],
      ),
    );
  }
}
