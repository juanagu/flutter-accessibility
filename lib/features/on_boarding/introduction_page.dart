import 'package:accessibilityapp/application/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import 'intro_fake_repository.dart';
import 'intro_page_view.dart';

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  List<IntroPageView> introPageViews;

  @override
  void initState() {
    super.initState();
    introPageViews = IntroFakeRepository().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return _buildIntros();
  }

  PageViewModel _buildPage(IntroPageView introPageView) {
    return PageViewModel(
      pageColor: introPageView.pageColor,
      bubble: _buildBubble(introPageView),
      body: _buildBody(introPageView),
      bodyTextStyle: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white,
          ),
      title: _buildTitle(introPageView),
      mainImage: _buildMainImage(introPageView),
    );
  }

  Widget _buildBubble(IntroPageView introPageView) {
    return Icon(
      introPageView.bubbleIconData,
      color: Colors.black54,
    );
  }

  Widget _buildBody(IntroPageView introPageView) {
    return Text(
      introPageView.bodyText,
    );
  }

  Widget _buildTitle(IntroPageView introPageView) {
    return Text(
      introPageView.titleText,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildMainImage(IntroPageView introPageView) {
    var size = MediaQuery.of(context).size.width * 0.75;
    return CircleAvatar(
        radius: size,
        backgroundColor: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size),
          child: Image.network(
            introPageView.mainImageUrl,
            fit: BoxFit.cover,
            height: size,
            width: size,
          ),
        ));
  }

  Widget _buildIntros() {
    return IntroViewsFlutter(
      introPageViews.map(_buildPage).toList(),
      showNextButton: true,
      showBackButton: true,
      doneText: Text('COMENZAR'),
      skipText: Text('OMITIR'),
      nextText: _buildIconButton(Icons.navigate_next),
      backText: _buildIconButton(Icons.navigate_before),
      onTapDoneButton: () {
        Navigator.pushReplacementNamed(context, RoutesName.home);
      },
      pageButtonTextStyles: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    );
  }

  Widget _buildIconButton(IconData iconData) {
    return SizedBox(
      width: 48.0,
      height: 48.0,
      child: Center(
        child: Icon(
          iconData,
          size: 32.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
