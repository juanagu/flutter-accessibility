import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryView {
  final IconData iconData;
  final String name;

  CategoryView(
    this.iconData,
    this.name,
  );

  static CategoryView empty() {
    return CategoryView(null, '------');
  }
}
