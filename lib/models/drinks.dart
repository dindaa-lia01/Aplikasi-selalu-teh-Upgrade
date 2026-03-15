class Drink {
  int? id;
  String name;
  int price;
  String sugarLevel;
  String imageUrl;

  Drink({
    this.id,
    required this.name,
    required this.price,
    required this.sugarLevel,
    required this.imageUrl,
  });

  factory Drink.fromJson(Map<String, dynamic> json) {
    return Drink(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      sugarLevel: json['sugar_level'],
      imageUrl: json['image_url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'sugar_level': sugarLevel,
      'image_url': imageUrl,
    };
  }
}
