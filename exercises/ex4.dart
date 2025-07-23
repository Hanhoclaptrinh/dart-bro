class Product {
  int id;
  String name;
  double _price;
  int _quantity;

  Product(this.id, this.name, double price, int quantity)
    : _price = price >= 0 ? price : 0,
      _quantity = quantity >= 0 ? quantity : 0;

  double get price => _price;
  int get quantity => _quantity;
  set price(double val) {
    val >= 0 ? _price = val : _price = 0;
  }

  set quantity(int val) {
    val >= 0 ? _quantity = val : _quantity = 0;
  }

  double getTotal() {
    return _price * _quantity;
  }

  void display() {
    print('id: $id, name: $name, price: $_price, quantity: $_quantity');
  }
}

void main() {
  var prd = [
    Product(1, 'San pham 1', 1.0, 2),
    Product(2, 'San pham 2', 2.0, 3),
    Product(3, 'San pham 3', 3.0, 4),
  ];

  double totalInventory = 0.0;
  for (var p in prd) {
    p.display();
    totalInventory += p.getTotal();
  }
  print('total inventory: $totalInventory');
}
