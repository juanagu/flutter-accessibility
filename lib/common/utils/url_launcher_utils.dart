import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncherUtils {
  static Future<void> openUrl(String url) async {
    if ((url == null || url.isEmpty)) {
      return;
    }

    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    }
  }
}
