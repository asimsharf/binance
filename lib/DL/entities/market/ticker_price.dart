class TickerPrice {
  String symbol;
  String price;

  TickerPrice({
    required this.symbol,
    required this.price,
  });

  factory TickerPrice.fromJson(Map<String, dynamic> json) {
    return TickerPrice(
      symbol: json["symbol"],
      price: json["price"],
    );
  }
}
