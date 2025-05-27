class Product {
  final int id;
  final String name;
  double? price;

  Product({required this.id, required this.name, this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'], // already nullable
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'price': price};

  bool get isFree => (price ?? 0) == 0;

  String get label => "$name - ₹${(price ?? 'N/A')}";

  @override
  String toString() => "$id: $label";
}

void main() {
  var rawList = [
    {'id': 1, 'name': 'Pen', 'price': 20.0},
    {'id': 2, 'name': 'Pencil', 'price': 0.0},
    {'id': 3, 'name': 'Notebook'}, // price is missing
    {'id': 4, 'name': 'Eraser', 'price': 6.0},
  ];

  List<Product> products = rawList
      .map((item) => Product.fromJson(item))
      .toList();
  List<Product> freeProducts = products.where((item) => item.isFree).toList();

  print("All Products:");
  products.forEach((item) => print(item.label));

  print("\nFree Products:");
  freeProducts.forEach((item) => print(item));
}
