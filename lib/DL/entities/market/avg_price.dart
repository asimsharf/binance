class AvgPrice {
  int mins;
  String price;

  AvgPrice({
    required this.mins,
    required this.price,
  });

  factory AvgPrice.fromJson(Map<String, dynamic> json) {
    return AvgPrice(
      mins: json["mins"],
      price: json["price"],
    );
  }
}
