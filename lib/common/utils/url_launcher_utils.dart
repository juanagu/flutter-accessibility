import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncherUtils {
  static Future<void> openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
