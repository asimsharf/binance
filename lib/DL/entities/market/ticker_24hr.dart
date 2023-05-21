class Ticker24Hr {
  String symbol;
  String priceChange;
  String priceChangePercent;
  String prevClosePrice;
  String lastPrice;
  String bidPrice;
  String bidQty;
  String askPrice;
  String askQty;
  String openPrice;
  String highPrice;
  String lowPrice;
  String volume;
  String quoteVolume;
  int openTime;
  int closeTime;
  int firstId;
  int lastId;
  int count;

  Ticker24Hr({
    required this.symbol,
    required this.priceChange,
    required this.priceChangePercent,
    required this.prevClosePrice,
    required this.lastPrice,
    required this.bidPrice,
    required this.bidQty,
    required this.askPrice,
    required this.askQty,
    required this.openPrice,
    required this.highPrice,
    required this.lowPrice,
    required this.volume,
    required this.quoteVolume,
    required this.openTime,
    required this.closeTime,
    required this.firstId,
    required this.lastId,
    required this.count,
  });

  factory Ticker24Hr.fromJson(Map<String, dynamic> json) {
    return Ticker24Hr(
      symbol: json["symbol"],
      priceChange: json["priceChange"],
      priceChangePercent: json["priceChangePercent"],
      prevClosePrice: json["prevClosePrice"],
      lastPrice: json["lastPrice"],
      bidPrice: json["bidPrice"],
      bidQty: json["bidQty"],
      askPrice: json["askPrice"],
      askQty: json["askQty"],
      openPrice: json["openPrice"],
      highPrice: json["highPrice"],
      lowPrice: json["lowPrice"],
      volume: json["volume"],
      quoteVolume: json["quoteVolume"],
      openTime: json["openTime"],
      closeTime: json["closeTime"],
      firstId: json["firstId"],
      lastId: json["lastId"],
      count: json["count"],
    );
  }
}
