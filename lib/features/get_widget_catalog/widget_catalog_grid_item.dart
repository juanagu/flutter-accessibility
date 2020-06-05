import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/get_widget_catalog/widget_catalog_view.dart';
import 'package:flutter/material.dart';

class WidgetCatalogGridItem extends StatelessWidget {
  final WidgetCatalogView widgetCatalogView;

  const WidgetCatalogGridItem({
    Key key,
    this.widgetCatalogView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '${widgetCatalogView.title} Item',
      hint: 'Presionar para visitar',
      child: GestureDetector(
        onTap: _onWidgetTapped,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: _buildContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildIcon(context),
            _buildTitle(context),
          ],
        ),
        _buildDescription(context),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Flexible(
        child: Text(
          widgetCatalogView.description,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.start,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Text(
          widgetCatalogView.title,
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                color: Theme.of(context).accentColor,
              ),
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Icon _buildIcon(BuildContext context) {
    return Icon(
      widgetCatalogView.iconData,
      size: 50.0,
      color: Theme.of(context).accentColor,
    );
  }

  void _onWidgetTapped() {
    UrlLauncherUtils.openUrl(widgetCatalogView.deepLink);
  }
}
