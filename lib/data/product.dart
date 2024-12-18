class Product {
  final String image;
  final int price;
  double stars;
  final double? oldPrice;
  final String desc;
  final String? offerTitle;
  final String? marketName;
  // final int? rate;
  final double numRating;
  final bool? isTopRate;
  bool isFavorite = false;

  Product(
      {this.marketName,
      required this.image,
      required this.price,
      required this.stars,
      required this.numRating,
      this.oldPrice,
      // this.rate,
      this.isTopRate,
      required this.desc,
      this.offerTitle});
}