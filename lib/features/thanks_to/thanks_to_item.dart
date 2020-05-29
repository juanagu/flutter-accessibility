import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/thanks_to/thanks_to_dto.dart';
import 'package:flutter/material.dart';

class ThanksToItem extends StatelessWidget {
  final ThanksToDto thanksToDto;

  const ThanksToItem({
    Key key,
    this.thanksToDto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Card(
        elevation:2,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(
            8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                60.0,
              ),
              child: Image.network(
                thanksToDto.imageUrl,
                height: 120.0,
                width: 120.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            thanksToDto.title.toUpperCase(),
          ),
          subtitle: Text(thanksToDto.description),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
          onTap: () => _onThanksToTapped(thanksToDto),
        ),
      ),
    );
  }

  void _onThanksToTapped(ThanksToDto thanksToDto) {
    UrlLauncherUtils.openUrl(thanksToDto.deepLink);
  }
}
