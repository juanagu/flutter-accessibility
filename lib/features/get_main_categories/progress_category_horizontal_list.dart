import 'package:accessibilityapp/common/components/factories/shimmer_factory.dart';
import 'package:accessibilityapp/features/get_main_categories/category_item.dart';
import 'package:accessibilityapp/features/get_main_categories/category_view.dart';
import 'package:flutter/material.dart';

class ProgressCategoryHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Cargando categorias',
      child: ExcludeSemantics(
        child: ShimmerFactory.buildShimmer(_buildFakeList()),
      ),
    );
  }

  Widget _buildFakeList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, i) => _buildItem(),
      itemCount: 8,
    );
  }

  Widget _buildItem() {
    return CategoryItem(
      categoryView: CategoryView.empty(),
    );
  }
}
