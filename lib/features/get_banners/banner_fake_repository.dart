import 'banner_view.dart';

class BannerFakeRepository {
  Future<List<BannerView>> getAll() async {
    await Future.delayed(Duration(
      seconds: 2,
    ));
    return [
      BannerView(
        'https://miro.medium.com/max/2560/1*vgN2zojqiIYu23JPVuaSiA.jpeg',
        'Do you know more about flutter?',
      ),
      BannerView(
        'https://d27go2yy70kkz6.cloudfront.net/wp-content/uploads/2019/05/empresa-desarrollo-app-flutter.jpg',
        'Flutter is the best multiplaform framework created by Google',
      ),
      BannerView(
        'https://assets.website-files.com/5e3c45dea042cf97f3689681/5e417cd336a72b06a86c73e7_Flutter-Tutorial-Header%402x.jpg',
        'Designs beatifuls apps with Flutter',
      ),
    ];
  }
}
