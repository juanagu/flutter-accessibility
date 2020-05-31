import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:flutter/material.dart';

class InformationDefinitionCard extends StatelessWidget {
  final String title;
  final String definition;
  final String deepLink;

  const InformationDefinitionCard({
    Key key,
    this.title,
    this.definition,
    this.deepLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onTapped,
        child: Card(
          elevation: 5,
          child: ExcludeSemantics(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline4,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      definition.toUpperCase(),
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.overline.copyWith(
                            fontSize: 14.0,
                          ),
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }

  void _onTapped() {
    if (deepLink != null && deepLink.isNotEmpty) {
      UrlLauncherUtils.openUrl(deepLink);
    }
  }
}
