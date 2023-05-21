class KLines {
  final DateTime? x;
  final num? high;
  final num? low;
  final num? open;
  final num? close;
  KLines({this.x, this.high, this.low, this.open, this.close});

  factory KLines.fromJson(List<dynamic> json) {
    return KLines(
      x: DateTime.fromMillisecondsSinceEpoch(json[0]),
      open: num.parse(json[1]),
      high: num.parse(json[2]),
      low: num.parse(json[3]),
      close: num.parse(json[4]),
    );
  }
}
