import 'dart:math';

abstract class Shape {
  double area();

  double perimeter();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => pi * pow(radius, 2);

  @override
  double perimeter() => 2 * pi * radius;
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;

  @override
  double perimeter() => 2 * (width + height);
}

class Triangle extends Shape {
  double stA;
  double stB;
  double stC;

  Triangle(this.stA, this.stB, this.stC);

  @override
  double area() {
    double st = perimeter() / 2;
    return sqrt(st * (st - stA) * (st - stB) * (st - stC));
  }

  @override
  double perimeter() => stA + stB + stC;
}

void main() {
  List<Shape> shape = [Circle(15), Rectangle(10, 15), Triangle(5, 10, 7)];
  for (var value in shape) {
    print("${value.toString()}: perimeter: ${value.perimeter()}, area: ${value.area()}");

  }
}