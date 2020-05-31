import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:flutter/material.dart';

import 'card_option.dart';

class InformationBulletListCard extends StatelessWidget {
  final String title;
  final List<CardOption> options;
  final String bullet = '\u2022';

  const InformationBulletListCard({
    Key key,
    this.title,
    this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildContent(context),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    List<Widget> content = [];
    content.add(_buildTitle(context));
    content.addAll(_getOptions(context));
    return content;
  }

  Iterable<Widget> _getOptions(BuildContext context) {
    return options.map((e) => _buildOption(context, e));
  }

  Widget _buildOption(BuildContext context, CardOption option) {
    return GestureDetector(
      onTap: () => _onItemTapped(option),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32.0,
          right: 8.0,
          bottom: 4.0,
          top: 4.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildOptionTitle(option, context),
            _buildIcon(option),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTitle(CardOption option, BuildContext context) {
    return Flexible(
      child: Text(
        '$bullet ${option.title}',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  void _onItemTapped(CardOption option) {
    if (option.hasDeepLink()) {
      UrlLauncherUtils.openUrl(option.deepLink);
    }
  }

  Widget _buildIcon(CardOption option) {
    if (option.hasDeepLink()) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
        ),
        child: Center(
          child: Icon(
            Icons.open_in_new,
            size: 22.0,
          ),
        ),
      );
    }

    return SizedBox();
  }
}
