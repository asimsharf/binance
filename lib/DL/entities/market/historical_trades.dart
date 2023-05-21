class HistoricalTrades {
  int id;
  String price;
  String qty;
  String quoteQty;
  int time;
  bool isBuyerMaker;
  bool isBestMatch;

  HistoricalTrades({
    required this.id,
    required this.price,
    required this.qty,
    required this.quoteQty,
    required this.time,
    required this.isBuyerMaker,
    required this.isBestMatch,
  });

  factory HistoricalTrades.fromJson(Map<String, dynamic> json) {
    return HistoricalTrades(
      id: json["id"],
      price: json["price"],
      qty: json["qty"],
      quoteQty: json["quoteQty"],
      time: json["time"],
      isBuyerMaker: json["isBuyerMaker"],
      isBestMatch: json["isBestMatch"],
    );
  }
}
