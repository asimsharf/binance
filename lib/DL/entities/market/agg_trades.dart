class AggTrades {
  int a;
  String p;
  String q;
  int f;
  int l;
  int t;
  bool aggTradeM;
  bool m;

  AggTrades({
    required this.a,
    required this.p,
    required this.q,
    required this.f,
    required this.l,
    required this.t,
    required this.aggTradeM,
    required this.m,
  });

  factory AggTrades.fromJson(Map<String, dynamic> json) {
    return AggTrades(
      a: json["a"],
      p: json["p"],
      q: json["q"],
      f: json["f"],
      l: json["l"],
      t: json["T"],
      aggTradeM: json["m"],
      m: json["M"],
    );
  }
}
