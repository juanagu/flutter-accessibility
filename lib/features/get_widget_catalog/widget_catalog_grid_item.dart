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
    return GestureDetector(
      onTap: _onWidgetTapped,
      child: Container(
        height: 300.0,
        child: Card(
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      widgetCatalogView.iconData,
                      size: 50.0,
                      color: Theme.of(context).accentColor,
                    ),
                    Flexible(
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
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    widgetCatalogView.description,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.start,
                    maxLines: 3,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    child: Text('Visit'),
                    onPressed: () => {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onWidgetTapped() {
    UrlLauncherUtils.openUrl(widgetCatalogView.deepLink);
  }
}
