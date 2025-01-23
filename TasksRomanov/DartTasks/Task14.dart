class Point {
  double x, y;

  Point(this.x, this.y);
}

class Rectangle {
  Point topLeft, bottomRight;

  Rectangle(this.topLeft, this.bottomRight);

  double getArea() {
    return (bottomRight.x - topLeft.x) * (topLeft.y - bottomRight.y);
  }
}

void main() {
  Point p1 = Point(50, 110);
  Point p2 = Point(55, 10);
  Rectangle rectangle = Rectangle(p1, p2);

  print("Площадь прямоугольника: ${rectangle.getArea()}");
}