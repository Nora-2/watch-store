class WatchItem {
  final String image;
  final String watchName;
  final String watchDescription;
  final String price;
  bool isFavorite;
  WatchItem(
      {required this.image,
      required this.watchName,
      required this.watchDescription,
      required this.price,
      this.isFavorite = false
      });
}
