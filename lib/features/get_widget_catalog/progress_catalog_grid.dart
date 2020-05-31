import 'package:accessibilityapp/common/components/factories/shimmer_factory.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_grid_item.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_view.dart';
import 'package:flutter/material.dart';

class ProgressCatalogGrid extends StatelessWidget {
  final int crossAxisCount;

  const ProgressCatalogGrid({
    Key key,
    this.crossAxisCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Cargando widgets',
      child: ExcludeSemantics(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ShimmerFactory.buildShimmer(
            _buildGrid(),
          ),
        ),
      ),
    );
  }

  GridView _buildGrid() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: _buildItems(),
    );
  }

  List<Widget> _buildItems() {
    return List.generate(20, (index) => _buildItem());
  }

  Widget _buildItem() {
    return WidgetCatalogGridItem(
      widgetCatalogView: WidgetCatalogView.empty(),
    );
  }
}
