import 'package:accessibilityapp/features/get_widget_catalog/progress_catalog_grid.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_fake_repository.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_grid_item.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_view.dart';
import 'package:flutter/material.dart';

class WidgetCatalogGrid extends StatefulWidget {
  @override
  _WidgetCatalogGridState createState() => _WidgetCatalogGridState();
}

class _WidgetCatalogGridState extends State<WidgetCatalogGrid> {
  bool _isLoading = true;
  List<WidgetCatalogView> _catalogWidgets;

  @override
  void initState() {
    super.initState();
    _loadCatalog();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return SliverToBoxAdapter(
        child: ProgressCatalogGrid(),
      );
    }

    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return WidgetCatalogGridItem(
            widgetCatalogView: _catalogWidgets[index],
          );
        },
        childCount: _catalogWidgets.length,
      ),
    );
  }

  Future<void> _loadCatalog() async {
    var result = await WidgetCatalogFakeRepository().getAll();
    setState(() {
      _isLoading = false;
      _catalogWidgets = result;
    });
  }
}
