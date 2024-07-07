abstract class Shape {
  area();
}

class Circle extends Shape {
  final int r;
  Circle({required this.r});
  @override
  area() {
    print(' the area of circle is ${3.14 * r * r}');
  }
}

class Rectangle extends Shape {
  final int width;
  final int length;
  Rectangle({required this.length, required this.width});
  @override
  area() {
    print('the area of rectangle is ${width * length}');
  }
}

void main() {
  Circle circle = Circle(r: 2);
  circle.area();
  Rectangle rectangle = Rectangle(length: 2, width: 4);
  rectangle.area();
}
