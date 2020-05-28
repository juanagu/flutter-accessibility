import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

abstract class ShimmerFactory {
  static buildShimmer(Widget child) {
    return Shimmer.fromColors(
      baseColor: Colors.black38,
      highlightColor: Colors.white,
      child: child,
    );
  }
}
