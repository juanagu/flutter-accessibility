import 'package:flutter/material.dart';

import 'category_view.dart';

class CategoryFakeRepository {
  Future<List<CategoryView>> getAll() async {
    await Future.delayed(Duration(seconds: 4));
    return [
      CategoryView(
        Icons.code,
        'Github',
        'https://github.com/flutter/flutter',
      ),
      CategoryView(
        Icons.show_chart,
        'Showcase',
        'https://flutter.dev/showcase',
      ),
      CategoryView(
        Icons.book,
        'Docs',
        'https://flutter.dev/docs',
      ),
      CategoryView(
        Icons.computer,
        'Samples',
        'https://flutter.github.io/samples/#',
      ),
      CategoryView(
        Icons.people,
        'Community',
        'https://flutter.dev/community',
      ),
    ];
  }
}
