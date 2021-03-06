import 'package:accessibilityapp/features/get_banners/banner_fake_repository.dart';
import 'package:accessibilityapp/features/get_banners/banner_item.dart';
import 'package:accessibilityapp/features/get_banners/progress_banner_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'banner_view.dart';

class BannerCarousel extends StatefulWidget {
  @override
  _BannerCarouselState createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  bool _isLoading = true;
  List<BannerView> banners;

  @override
  void initState() {
    super.initState();
    _loadBanners();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return ProgressBannerCarousel();
    }

    return _buildCarousel();
  }

  Future<void> _loadBanners() async {
    var result = await BannerFakeRepository().getAll();

    setState(() {
      _isLoading = false;
      banners = result;
    });
  }

  Widget _buildCarousel() {
    return ExcludeSemantics(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.6,
          enlargeCenterPage: true,
          autoPlayInterval: Duration(
            seconds: 5,
          ),
        ),
        items: _buildBannerItems(),
      ),
    );
  }

  List<Widget> _buildBannerItems() {
    if (banners != null) {
      return banners
          .map(
            (e) => BannerItem(
              bannerView: e,
            ),
          )
          .toList();
    }

    return [];
  }
}
