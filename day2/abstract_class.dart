abstract class Shape {
  double get area;
  void describe();
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);
  @override
  // TODO: implement area
  double get area => 3.14 * radius * radius;

  @override
  void describe() {
    // TODO: implement describe
    print("Radius - $radius & Area - ${area.toStringAsFixed(2)}");
  }
}

void main() {
  var circle = Circle(23.3);
  print(circle.area.toStringAsFixed(2));
  circle.describe();
}
