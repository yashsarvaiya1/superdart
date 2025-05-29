void main() {
  var cart = [
    {'item': 'pen', 'qnt': 2},
    {'item': 'pencil', 'qnt': 5},
  ];

  cart.add({'item': 'eraser', 'qnt': 3});
  int index = cart.indexWhere((c) => c['item'] == 'pen');
  if (index != -1) {
    cart[index]['qnt'] = (cart[index]['qnt'] as int) + 3;
  }

  cart.removeWhere((c) => c['item'] == 'pencil');

  int index1 = cart.indexWhere((c) => c['item'] == 'eraser');
  if (index1 != -1) {
    cart[index1]['qnt'] = 5;
  }

  var filter = cart.where((c) => (c['qnt'] as int) > 2).toList();
  filter.forEach((f) => print(f));

  // get_storage simulation...
  var storage = {};
  storage['cart'] = cart;
  print(storage['cart']);

  //making another instance for updating it
  var mycart = storage['cart'];
  mycart.add({'item': "sharpner", 'qnt': 5});
  mycart.addAll([
    {'item': "color", 'qnt': 2},
    {'item': "box", 'qnt': 1},
  ]);

  //foreach for direct manipulation where map create another instance.
  mycart.forEach((c) {
    if (c['qnt'] < 5) {
      c['qnt'] = c['qnt'] + 2;
    }
  });

  storage['cart'] = mycart;
  print(storage['cart']);
}
