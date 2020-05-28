import 'package:accessibilityapp/features/get_banners/banner_carousel.dart';
import 'package:accessibilityapp/features/get_main_categories/category_list.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_grid.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key key,
    this.title = 'Flutter Accessibility',
  }) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: BannerCarousel(),
            ),
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            WidgetCatalogGrid(),
          ],
        ),
      ),
    );
  }
}
