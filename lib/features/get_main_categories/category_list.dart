import 'package:accessibilityapp/features/get_main_categories/category_fake_repository.dart';
import 'package:accessibilityapp/features/get_main_categories/category_item.dart';
import 'package:accessibilityapp/features/get_main_categories/category_view.dart';
import 'package:flutter/material.dart';

import 'progress_category_horizontal_list.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  bool _isLoading = true;
  List<CategoryView> categories;

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    if (_isLoading) {
      return ProgressCategoryHorizontalList();
    }

    return ListView.builder(
      itemBuilder: _itemBuilder,
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
    );
  }

  Future<void> _loadCategories() async {
    var result = await CategoryFakeRepository().getAll();
    setState(() {
      _isLoading = false;
      categories = result;
    });
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return CategoryItem(
      categoryView: categories[index],
    );
  }
}
