class Trades {
  int id;
  String price;
  String qty;
  String quoteQty;
  int time;
  bool isBuyerMaker;
  bool isBestMatch;

  Trades({
    required this.id,
    required this.price,
    required this.qty,
    required this.quoteQty,
    required this.time,
    required this.isBuyerMaker,
    required this.isBestMatch,
  });

  factory Trades.fromJson(Map<String, dynamic> json) {
    return Trades(
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
