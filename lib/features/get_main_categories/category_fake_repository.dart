import 'package:flutter/material.dart';

import 'category_view.dart';

class CategoryFakeRepository {
  Future<List<CategoryView>> getAll() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      CategoryView(Icons.code, 'Github'),
      CategoryView(Icons.show_chart, 'Show cases'),
      CategoryView(Icons.widgets, 'Widgets'),
      CategoryView(Icons.book, 'Docs'),
      CategoryView(Icons.computer, 'Samples'),
      CategoryView(Icons.people, 'Community'),
    ];
  }
}
