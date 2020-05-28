import 'banner_view.dart';

class BannerFakeRepository {
  Future<List<BannerView>> getAll() async {
    await Future.delayed(Duration(
      seconds: 4,
    ));
    return [
      BannerView(
        'https://lh3.googleusercontent.com/DAeLGsE71e2dNbcIr51s4ZGr-Z_CnrhW-wa50u8H2vO_jJ6zYovMU-RIR7bgKYz4Q3ru_L5qmp6rHfThDj9mktyZvGwTM6i3LA5dAg=w760-h360',
        'Material Design guide',
        'https://material.io/design/usability/accessibility.html#understanding-accessibility',
      ),
      BannerView(
        'https://d27go2yy70kkz6.cloudfront.net/wp-content/uploads/2019/05/empresa-desarrollo-app-flutter.jpg',
        'Google developer guide',
        'https://www.google.com/accessibility/',
      ),
      BannerView(
        'https://www.w3.org/WAI/assets/images/social-sharing-default.jpg',
        'W3C',
        'https://www.w3.org/WAI/',
      ),
      BannerView(
        'https://miro.medium.com/max/1000/1*w_Hwise5fi9orTgRt5ClQA.jpeg',
        'Flutter Tips',
        'https://flutter.dev/docs/development/accessibility-and-localization/accessibility',
      )
    ];
  }
}
