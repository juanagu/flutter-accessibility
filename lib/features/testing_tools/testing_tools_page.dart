import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/testing_tools/accessibility_info_view_dto.dart';
import 'package:accessibilityapp/features/testing_tools/accessibility_info_fake_repository.dart';
import 'package:flutter/material.dart';

class TestingToolsPage extends StatelessWidget {
  final List<AccessibilityInfoViewDto> items =
      AccessibilityInfoFakeRepository().getAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: _buildItem,
        separatorBuilder: (context, index) => Container(
          height: 1,
          width: double.infinity,
          color: Theme.of(context).dividerColor,
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, int index) {
    var item = items[index];
    return ListTile(
      leading: Icon(
        item.iconData,
        size: 32.0,
      ),
      title: Text(
        item.title,
      ),
      subtitle: Text(
        item.description,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 18.0,
      ),
      onTap: () => _onItemTapped(item, context),
    );
  }

  void _onItemTapped(
    AccessibilityInfoViewDto item,
    BuildContext context,
  ) {
    if (item.route != null && item.route.isNotEmpty) {
      Navigator.of(context).pushNamed(item.route);
    } else {
      UrlLauncherUtils.openUrl(item.deepLink);
    }
  }
}
