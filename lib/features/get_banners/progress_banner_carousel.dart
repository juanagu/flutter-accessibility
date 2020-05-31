import 'package:accessibilityapp/common/components/factories/shimmer_factory.dart';
import 'package:accessibilityapp/features/get_banners/banner_item.dart';
import 'package:accessibilityapp/features/get_banners/banner_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProgressBannerCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180.0,
      child: ShimmerFactory.buildShimmer(
        _buildCarousel(),
      ),
    );
  }

  Widget _buildCarousel() {
    return Semantics(
      label: 'Cargando destacados',
      child: ExcludeSemantics(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: false,
            aspectRatio: 2.6,
            enlargeCenterPage: true,
          ),
          items: _buildItems(),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    return List.generate(3, (index) => _buildItem());
  }

  Widget _buildItem() {
    return BannerItem(
      bannerView: BannerView.empty(),
    );
  }
}
