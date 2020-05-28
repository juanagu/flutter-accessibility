class BannerView {
  final String image;
  final String description;
  final String deepLink;

  BannerView(
    this.image,
    this.description,
    this.deepLink,
  );

  static BannerView empty() {
    return BannerView('', '', '');
  }
}
