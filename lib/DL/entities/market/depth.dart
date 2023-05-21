class Depth {
  int lastUpdateId;
  List<List<String>> bids;
  List<List<String>> asks;

  Depth({
    required this.lastUpdateId,
    required this.bids,
    required this.asks,
  });

  factory Depth.fromJson(Map<String, dynamic> json) {
    return Depth(
      lastUpdateId: json["lastUpdateId"],
      bids: List<List<String>>.from(
        json["bids"].map(
          (x) => List<String>.from(x.map((x) => x)),
        ),
      ),
      asks: List<List<String>>.from(
        json["asks"].map(
          (x) => List<String>.from(x.map((x) => x)),
        ),
      ),
    );
  }
}
