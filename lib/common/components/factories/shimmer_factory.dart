import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

abstract class ShimmerFactory {
  static Widget buildShimmer(Widget child) {
    if (kIsWeb) {
      return Opacity(
        opacity: 0.5,
        child: child,
      );
    } else {
      return Shimmer.fromColors(
        baseColor: Colors.black38,
        highlightColor: Colors.white,
        child: child,
      );
    }
  }
}
