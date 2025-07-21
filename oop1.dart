import 'dart:math';

class Point {
  // attribute
  num? x, y;

  // constructor
  Point(this.x, this.y);

  // method
  double distanceTo(Point other) {
    var dx = x! - other.x!;
    var dy = y! - other.y!;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var p1 = Point(1, 2);
  var p2 = Point(3, 4);
  print(p1.distanceTo(p2).toStringAsFixed(2));
}
