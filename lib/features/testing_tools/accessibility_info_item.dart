import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/testing_tools/accessibility_info_view_dto.dart';
import 'package:flutter/material.dart';

class AccessibilityInfoItem extends StatelessWidget {
  final AccessibilityInfoViewDto accessibilityInfoViewDto;

  const AccessibilityInfoItem({
    Key key,
    this.accessibilityInfoViewDto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: ListTile(
        leading: Icon(
          accessibilityInfoViewDto.iconData,
          size: 32.0,
        ),
        title: Text(
          accessibilityInfoViewDto.title,
        ),
        subtitle: Text(
          accessibilityInfoViewDto.description,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 18.0,
        ),
        onTap: _onTapped,
      ),
    );
  }

  void _onTapped() {
    UrlLauncherUtils.openUrl(
      accessibilityInfoViewDto.deepLink,
    );
  }
}
