import 'package:flutter/material.dart';

class Themes {
  //
  Themes._();

  static final ThemeData light = ThemeData.light().copyWith(
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 5,
      shadowColor: Colors.grey[400],
    ),
  );

  static final ThemeData dark = ThemeData.dark().copyWith(
    cardTheme: CardTheme(
      color: Colors.grey[800],
      elevation: 5,
      shadowColor: Colors.grey[900],
    ),
  );
}
