class Ticker {
  String symbol;
  String priceChange;
  String priceChangePercent;
  String weightedAvgPrice;
  String openPrice;
  String highPrice;
  String lowPrice;
  String lastPrice;
  String volume;
  String quoteVolume;
  int openTime;
  int closeTime;
  int firstId;
  int lastId;
  int count;

  Ticker({
    required this.symbol,
    required this.priceChange,
    required this.priceChangePercent,
    required this.weightedAvgPrice,
    required this.openPrice,
    required this.highPrice,
    required this.lowPrice,
    required this.lastPrice,
    required this.volume,
    required this.quoteVolume,
    required this.openTime,
    required this.closeTime,
    required this.firstId,
    required this.lastId,
    required this.count,
  });

  factory Ticker.fromJson(Map<String, dynamic> json) {
    return Ticker(
      symbol: json["symbol"],
      priceChange: json["priceChange"],
      priceChangePercent: json["priceChangePercent"],
      weightedAvgPrice: json["weightedAvgPrice"],
      openPrice: json["openPrice"],
      highPrice: json["highPrice"],
      lowPrice: json["lowPrice"],
      lastPrice: json["lastPrice"],
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
