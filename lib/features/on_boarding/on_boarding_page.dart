import 'package:accessibilityapp/application/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import 'onboarding_fake_repository.dart';
import 'on_boarding_view_dto.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<OnBoardingViewDto> introPageViews;

  @override
  void initState() {
    super.initState();
    introPageViews = OnBoardingFakeRepository().getAll();
  }

  @override
  Widget build(BuildContext context) {
    return _buildIntros();
  }

  PageViewModel _buildPage(OnBoardingViewDto introPageView) {
    return PageViewModel(
      pageColor: introPageView.pageColor,
      bubble: _buildBubble(introPageView),
      body: _buildBody(introPageView),
      bodyTextStyle: Theme.of(context).textTheme.headline6.copyWith(
            color: Colors.white,
          ),
      title: _buildTitle(introPageView),
      mainImage: ExcludeSemantics(
        child: _buildMainImage(introPageView),
      ),
    );
  }

  Widget _buildBubble(OnBoardingViewDto introPageView) {
    return Icon(
      introPageView.bubbleIconData,
      color: Colors.black54,
    );
  }

  Widget _buildTitle(OnBoardingViewDto introPageView) {
    return Semantics(
      focused: true,
      sortKey: OrdinalSortKey(0),
      child: Text(
        introPageView.titleText,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildBody(OnBoardingViewDto introPageView) {
    return Semantics(
      sortKey: OrdinalSortKey(1),
      child: Text(
        introPageView.bodyText,
      ),
    );
  }

  Widget _buildMainImage(OnBoardingViewDto introPageView) {
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
      ),
    );
  }

  Widget _buildIntros() {
    return Semantics(
      label: 'Introducción de presentación',
      hint: 'Presionar para omitir y comenzar a usar la aplicación',
      explicitChildNodes: true,
      onTap: _onDoneTapped,
      child: IntroViewsFlutter(
        introPageViews.map(_buildPage).toList(),
        showNextButton: true,
        showBackButton: true,
        doneText: _buildDoneText(),
        skipText: _buildSkipText(),
        nextText: _buildIconButton(
          Icons.navigate_next,
          'Siguiente',
        ),
        backText: _buildIconButton(
          Icons.navigate_before,
          'Volver',
        ),
        onTapDoneButton: _onDoneTapped,
        pageButtonTextStyles: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget _buildDoneText() {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Text('COMENZAR'),
    );
  }

  Widget _buildSkipText() {
    return ExcludeSemantics(
      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Text('OMITIR'),
      ),
    );
  }

  void _onDoneTapped() {
    Navigator.pushReplacementNamed(context, RoutesName.home);
  }

  Widget _buildIconButton(
    IconData iconData,
    String semanticLabel,
  ) {
    return Semantics(
      label: semanticLabel,
      button: true,
      excludeSemantics: true,
      child: SizedBox(
        width: 48.0,
        height: 48.0,
        child: Center(
          child: Icon(
            iconData,
            size: 32.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
