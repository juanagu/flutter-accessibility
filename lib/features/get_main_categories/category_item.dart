import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/get_main_categories/category_view.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final CategoryView categoryView;

  const CategoryItem({
    Key key,
    this.categoryView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 2.0,
        ),
        child: Container(
          width: 90.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _buildCircleICon(context),
              _buildNameLabel(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircleICon(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).cardTheme.shadowColor,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          categoryView.iconData,
          size: 24.0,
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }

  Widget _buildNameLabel(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          categoryView.name,
          style: Theme.of(context).textTheme.subtitle1,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  void _onTapped() {
    UrlLauncherUtils.openUrl(categoryView.deepLink);
  }
}
