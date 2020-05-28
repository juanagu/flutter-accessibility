import 'package:accessibilityapp/features/home/root_page.dart';
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
      bubble: Icon(introPageView.bubbleIconData),
      body: Text(
        introPageView.bodyText,
      ),
      title: Text(
        introPageView.titleText,
      ),
      mainImage: CircleAvatar(
          radius: (150.0),
          backgroundColor: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(150.0),
            child: Image.network(
              introPageView.mainImageUrl,
              height: 300.0,
              width: 300.0,
              fit: BoxFit.cover,
            ),
          )),
    );
  }

  Widget _buildIntros() {
    return IntroViewsFlutter(
      introPageViews.map(_buildPage).toList(),
      showNextButton: true,
      showBackButton: true,
      doneText: Text('COMENZAR'),
      skipText: Text('OMITIR'),
      nextText: Icon(
        Icons.navigate_next,
        size: 32.0,
        color: Colors.white,
      ),
      backText: Icon(
        Icons.navigate_before,
        size: 32.0,
        color: Colors.white,
      ),
      onTapDoneButton: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => RootPage(),
          ), //MaterialPageRoute
        );
      },
      pageButtonTextStyles: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      ),
    );
  }
}
