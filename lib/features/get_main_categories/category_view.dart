import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryView {
  final IconData iconData;
  final String name;
  final String deepLink;

  CategoryView(
    this.iconData,
    this.name,
    this.deepLink,
  );

  static CategoryView empty() {
    return CategoryView(null, '------', '');
  }
}
