import 'package:flutter/material.dart';

import 'widget_catalog_view.dart';

class WidgetCatalogFakeRepository {
  Future<List<WidgetCatalogView>> getAll() async {
    await Future.delayed(Duration(
      seconds: 1,
    ));

    return [
      WidgetCatalogView(
        'Accessibility',
        'Make your app accessible',
        Icons.accessibility,
        'https://flutter.dev/docs/development/ui/widgets/accessibility',
      ),
      WidgetCatalogView(
        'Animation and Motion',
        'Bring animation to your app',
        Icons.insert_emoticon,
        '',
      ),
      WidgetCatalogView(
        'Assets images and icons',
        'Manage assets, display images, and show icons',
        Icons.image,
        '',
      ),
      WidgetCatalogView(
        'Async',
        'Async patterns to your Flutter application',
        Icons.settings_ethernet,
        '',
      ),
      WidgetCatalogView(
        'Basics',
        'Widgets you absolutely need to know before building your first Flutter app.',
        Icons.library_books,
        '',
      ),
      WidgetCatalogView(
        'Cupertino (iOS-Style widgets)',
        'Beautiful and high-fidelity widgets for current iOS design language.',
        Icons.phone_iphone,
        '',
      ),
      WidgetCatalogView(
        'Input',
        'Take user input in addition to input widgets in Material Components and Cupertino.',
        Icons.input,
        '',
      ),
      WidgetCatalogView(
        'Interactions Models',
        'Respond to touch events and route users to different views.',
        Icons.router,
        '',
      ),
      WidgetCatalogView(
        'Layout',
        'Arrange other widgets columns, rows, grids, and many other layouts.',
        Icons.layers,
        '',
      ),
      WidgetCatalogView(
        'Material Components',
        'Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.',
        Icons.filter_vintage,
        '',
      ),
      WidgetCatalogView(
        'Painting and effects',
        'These widgets apply visual effects to the children without changing their layout, size, or position.',
        Icons.format_paint,
        '',
      ),
      WidgetCatalogView(
        'Scrolling',
        'Scroll multiple widgets as children of the parent.',
        Icons.fullscreen,
        '',
      ),
      WidgetCatalogView(
        'Styling',
        'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
        Icons.style,
        '',
      ),
      WidgetCatalogView(
        'Text',
        'Display and style text.',
        Icons.text_fields,
        '',
      ),
    ];
  }
}
