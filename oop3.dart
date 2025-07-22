class Product {
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);

  void showTotal() {
    print('total price is: ${price * quantity}');
  }
}

class Tablet extends Product {
  double width;
  double height;

  Tablet(this.width, this.height, double price, int quantity, String name)
    : super(price, quantity, name);

  @override
  void showTotal() {
    print('name: $name, width: $width, height: $height');
    super.showTotal();
  }
}

void main() {
  var t = Tablet(13, 2, 1999, 30, 'san pham 1');
  t.showTotal();
}
