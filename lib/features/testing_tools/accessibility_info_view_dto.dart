import 'package:flutter/material.dart';

class AccessibilityInfoViewDto {
  final String title;
  final String description;
  final IconData iconData;
  final String deepLink;
  final String route;

  AccessibilityInfoViewDto(
      this.title, this.description, this.iconData, this.deepLink,
      {this.route = ''});
}
