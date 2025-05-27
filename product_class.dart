class Product {
  final int id;
  final String name;
  double? price;

  Product({required this.id, required this.name, this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(id: json['id'], name: json['name'], price: json['price']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'pricce': price};
  }

  bool get isFree => (price ?? 0) == 0;
  String get label => "$name - \$ ${(price ?? 'N/A')}";
}

void main() {
  var map = {'id': 1, 'name': "pen", 'price': 20.5};
  var product = Product.fromJson(map);
  print(map);
  print(Product.fromJson(map));
  print(product.label); // Pen - ₹20.5
  print(product.isFree);
  product.price = 0;
  print(product.label); // Pen - ₹0.0
  print(product.isFree);
  print(product.toJson());
}
