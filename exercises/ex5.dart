import 'dart:math';

abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }

  @override
  double getPerimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return pi * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * pi * radius;
  }
}

void main() {
  var r = Rectangle(3, 4);
  var c = Circle(5);
  print('area of rectangle: ${r.getArea()}');
  print('perimeter of rectangle: ${r.getPerimeter()}');
  print('area of circle: ${c.getArea().toStringAsFixed(3)}'); 
  print('perimeter of circle: ${c.getPerimeter().toStringAsFixed(3)}'); 
}
