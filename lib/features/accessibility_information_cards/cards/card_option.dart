class CardOption {
  final String title;
  final String deepLink;

  CardOption(
    this.title,
    this.deepLink,
  );

  bool hasDeepLink() {
    return deepLink != null && deepLink.isNotEmpty;
  }
}
