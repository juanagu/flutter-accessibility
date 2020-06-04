import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'typographic_type.dart';

class TypographicMaterialTypeScaleFakeRepository {
  final BuildContext context;

  TypographicMaterialTypeScaleFakeRepository(
    this.context,
  );

  List<TypographicType> getDefault() {
    var textTheme = Theme.of(context).textTheme;
    return [
      TypographicType(textTheme.headline1, 'Headline1'),
      TypographicType(textTheme.headline2, 'Headline2'),
      TypographicType(textTheme.headline3, 'Headline3'),
      TypographicType(textTheme.headline4, 'Headline4'),
      TypographicType(textTheme.headline5, 'Headline5'),
      TypographicType(textTheme.headline6, 'Headline6'),
      TypographicType(textTheme.subtitle1, 'Subtitle1'),
      TypographicType(textTheme.bodyText1, 'BodyText1'),
      TypographicType(textTheme.bodyText2, 'BodyText2'),
      TypographicType(textTheme.button, 'Button'),
      TypographicType(textTheme.caption, 'Caption'),
      TypographicType(textTheme.overline, 'Overline'.toUpperCase()),
    ];
  }

  List<TypographicType> getCustom() {
    var textTheme = Theme.of(context).textTheme;
    return [
      TypographicType(
        _buildTextStyle(30.0, Colors.black),
        'Headline1',
      ),
      TypographicType(
        textTheme.headline2,
        'Headline2',
      ),
      TypographicType(
        textTheme.headline3,
        'Headline3',
      ),
      TypographicType(
        textTheme.headline4,
        'Headline4',
      ),
      TypographicType(
        textTheme.headline5,
        'Headline5',
      ),
      TypographicType(
        textTheme.subtitle1,
        'Subtitle1',
      ),
      TypographicType(
        textTheme.bodyText1,
        'BodyText1',
      ),
      TypographicType(
        textTheme.bodyText2,
        'BodyText2',
      ),
      TypographicType(
        textTheme.button,
        'Button',
      ),
      TypographicType(
        textTheme.caption,
        'Caption',
      ),
      TypographicType(
        textTheme.overline,
        'Overline',
      ),
    ];
  }

  TextStyle _buildTextStyle(double fontSize, Color color) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
    );
  }
}
