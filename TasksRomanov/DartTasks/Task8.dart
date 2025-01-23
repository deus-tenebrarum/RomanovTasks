abstract class Shape {
  double getArea();
}

class Circle extends Shape {
  double rad;

  Circle(this.rad);

  @override
  double getArea() {
    return 3.14 * rad * rad;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

void main() {
  Shape rectangle = Rectangle(8.0, 54.0);
  Shape circle = Circle(12.0);

  print("Площадь прямоугольника: ${rectangle.getArea()}");
  print("Площадь круга: ${circle.getArea()}");
}