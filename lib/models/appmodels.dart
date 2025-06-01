class Product {
  String name;
  int price;
  String category;

  Product({required this.name, required this.price, required this.category});

  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
    'category': category,
  };

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json['name'],
    price: json['price'],
    category: json['category'],
  );
}
