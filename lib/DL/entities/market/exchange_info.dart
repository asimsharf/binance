class ExchangeInfo {
  String timezone;
  int serverTime;
  List<RateLimit> rateLimits;
  List<ExchangeFilter> exchangeFilters;
  List<Symbol> symbols;

  ExchangeInfo({
    required this.timezone,
    required this.serverTime,
    required this.rateLimits,
    required this.exchangeFilters,
    required this.symbols,
  });

  factory ExchangeInfo.fromJson(Map<String, dynamic> json) {
    return ExchangeInfo(
      timezone: json["timezone"],
      serverTime: json["serverTime"],
      rateLimits: List<RateLimit>.from(
        json["rateLimits"].map((x) => RateLimit.fromJson(x)),
      ),
      exchangeFilters: List<ExchangeFilter>.from(
        json["exchangeFilters"].map((x) => ExchangeFilter.fromJson(x)),
      ),
      symbols: List<Symbol>.from(
        json["symbols"].map((x) => Symbol.fromJson(x)),
      ),
    );
  }
}

class ExchangeFilter {
  ExchangeFilter();
  factory ExchangeFilter.fromJson(Map<String, dynamic> json) {
    return ExchangeFilter();
  }
}

class RateLimit {
  String rateLimitType;
  String interval;
  int intervalNum;
  int limit;

  RateLimit({
    required this.rateLimitType,
    required this.interval,
    required this.intervalNum,
    required this.limit,
  });

  factory RateLimit.fromJson(Map<String, dynamic> json) {
    return RateLimit(
      rateLimitType: json["rateLimitType"],
      interval: json["interval"],
      intervalNum: json["intervalNum"],
      limit: json["limit"],
    );
  }
}

class Symbol {
  String symbol;
  String status;
  String baseAsset;
  int baseAssetPrecision;
  String quoteAsset;
  int quoteAssetPrecision;
  int baseCommissionPrecision;
  int quoteCommissionPrecision;
  List<String> orderTypes;
  bool icebergAllowed;
  bool ocoAllowed;
  bool quoteOrderQtyMarketAllowed;
  bool allowTrailingStop;
  bool isSpotTradingAllowed;
  bool isMarginTradingAllowed;
  List<Filter> filters;
  List<String> permissions;
  String defaultSelfTradePreventionMode;
  List<String> allowedSelfTradePreventionModes;

  Symbol({
    required this.symbol,
    required this.status,
    required this.baseAsset,
    required this.baseAssetPrecision,
    required this.quoteAsset,
    required this.quoteAssetPrecision,
    required this.baseCommissionPrecision,
    required this.quoteCommissionPrecision,
    required this.orderTypes,
    required this.icebergAllowed,
    required this.ocoAllowed,
    required this.quoteOrderQtyMarketAllowed,
    required this.allowTrailingStop,
    required this.isSpotTradingAllowed,
    required this.isMarginTradingAllowed,
    required this.filters,
    required this.permissions,
    required this.defaultSelfTradePreventionMode,
    required this.allowedSelfTradePreventionModes,
  });

  factory Symbol.fromJson(Map<String, dynamic> json) {
    return Symbol(
      symbol: json["symbol"],
      status: json["status"],
      baseAsset: json["baseAsset"],
      baseAssetPrecision: json["baseAssetPrecision"],
      quoteAsset: json["quoteAsset"],
      quoteAssetPrecision: json["quoteAssetPrecision"],
      baseCommissionPrecision: json["baseCommissionPrecision"],
      quoteCommissionPrecision: json["quoteCommissionPrecision"],
      orderTypes: List<String>.from(json["orderTypes"].map((x) => x)),
      icebergAllowed: json["icebergAllowed"],
      ocoAllowed: json["ocoAllowed"],
      quoteOrderQtyMarketAllowed: json["quoteOrderQtyMarketAllowed"],
      allowTrailingStop: json["allowTrailingStop"],
      isSpotTradingAllowed: json["isSpotTradingAllowed"],
      isMarginTradingAllowed: json["isMarginTradingAllowed"],
      filters: List<Filter>.from(
        json["filters"].map((x) => Filter.fromJson(x)),
      ),
      permissions: List<String>.from(
        json["permissions"].map((x) => x),
      ),
      defaultSelfTradePreventionMode: json["defaultSelfTradePreventionMode"],
      allowedSelfTradePreventionModes: List<String>.from(
        json["allowedSelfTradePreventionModes"].map((x) => x),
      ),
    );
  }
}

class Filter {
  String filterType;
  String minPrice;
  String maxPrice;
  String tickSize;

  Filter({
    required this.filterType,
    required this.minPrice,
    required this.maxPrice,
    required this.tickSize,
  });

  factory Filter.fromJson(Map<String, dynamic> json) {
    return Filter(
      filterType: json["filterType"],
      minPrice: json["minPrice"] ?? "0",
      maxPrice: json["maxPrice"] ?? "0",
      tickSize: json["tickSize"] ?? "0",
    );
  }
}
