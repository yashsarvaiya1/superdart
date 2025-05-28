class CartItem {
  final String item;
  final int qnt;

  CartItem({required this.item, required this.qnt});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(item: json['item'], qnt: json['qnt']);
  }

  Map<String, dynamic> toJSon() {
    return {'item': item, 'qnt': qnt};
  }

  String get label => "$item - $qnt";

  bool isItem(item) {
    if (this.item == item) {
      return true;
    }
    return false;
  }
}

class CartManager {
  final List<CartItem> items;

  CartManager({required this.items});

  factory CartManager.fromJson(List<Map<String, dynamic>> items) {
    return CartManager(items: items.map((e) => CartItem.fromJson(e)).toList());
  }
  List<Map<String, dynamic>> toJson() {
    return items.map((e) => e.toJSon()).toList();
  }

  void addItem(String item, int qnt) {
    /* can be done like this... 

    final existing = items.indexWhere((element) => element.item == item);
    if (existing != -1) {
      items[existing] = CartItem(
        item: item,
        qnt: items[existing].qnt + qnt,
      );
      return;
    } */
    final existing = items.where((element) => element.item == item);
    if (existing.isNotEmpty) {
      items[items.indexOf(existing.first)] = CartItem(
        item: item,
        qnt: existing.first.qnt + qnt,
      );
      return;
    }
    items.add(CartItem(item: item, qnt: qnt));
  }

  void showCart() {
    items.forEach((e) => print(e.label));
  }
}

void main() {
  final cart = CartManager(items: []);
  cart.addItem("pen", 5);
  cart.addItem("pencil", 2);
  cart.addItem("pen", 4);

  cart.showCart();

  Map<String, dynamic> localstorage = {};

  localstorage["cart"] = cart.toJson();
  print("${localstorage["cart"]}");

  var newCart = CartManager(items: []);

  newCart = CartManager.fromJson(localstorage['cart']);

  newCart.showCart();
}
