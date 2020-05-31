import 'package:accessibilityapp/common/utils/url_launcher_utils.dart';
import 'package:accessibilityapp/features/get_banners/banner_view.dart';
import 'package:flutter/material.dart';

class BannerItem extends StatelessWidget {
  final BannerView bannerView;

  const BannerItem({
    Key key,
    this.bannerView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onBannerTapped,
      child: Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
              child: Stack(
                children: <Widget>[
                  _buildImage(),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black54,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Text(
                          bannerView.description.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.caption.copyWith(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget _buildImage() {
    var width = 1000.0;
    if (bannerView.image.isNotEmpty) {
      return Image.network(
        bannerView.image,
        fit: BoxFit.cover,
        width: width,
      );
    }
    return Container(
      width: width,
    );
  }

  void _onBannerTapped() {
    if (bannerView.deepLink.isNotEmpty) {
      UrlLauncherUtils.openUrl(bannerView.deepLink);
    }
  }
}
