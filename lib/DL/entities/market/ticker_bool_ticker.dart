class TickerBookTicker {
  String symbol;
  String price;

  TickerBookTicker({
    required this.symbol,
    required this.price,
  });

  factory TickerBookTicker.fromJson(Map<String, dynamic> json) {
    return TickerBookTicker(
      symbol: json["symbol"],
      price: json["price"] ?? '',
    );
  }
}
