import 'package:flutter/cupertino.dart';

class WidgetCatalogView {
  final String title;
  final String description;
  final IconData iconData;
  final String deepLink;

  WidgetCatalogView(
    this.title,
    this.description,
    this.iconData,
    this.deepLink,
  );

  static WidgetCatalogView empty() {
    return WidgetCatalogView('', '', null, '');
  }
}
