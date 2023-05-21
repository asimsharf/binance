class Time {
  final DateTime serverTime;
  Time({required this.serverTime});

  factory Time.fromJson(Map<String, dynamic> json) {
    return Time(
      serverTime: DateTime.fromMillisecondsSinceEpoch(json['serverTime']),
    );
  }
}
