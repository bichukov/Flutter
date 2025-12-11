import 'dart:io';

abstract class Math<T> {
  String get name ;
  T result();
}

class Sum extends Math<num> {
  num x;
  num y;

  Sum(this.x, this.y);

  @override
  String get name => "Сложение";

  @override
  num result() => x + y;
}

class Subtraction extends Math<num> {
  num x;
  num y;

  Subtraction(this.x, this.y);

  @override
  String get name => "Вычитание";

  @override
  num result() => x - y;
}

class Multiplication extends Math<num> {
  num x;
  num y;

  Multiplication(this.x, this.y);

  @override
  String get name => "Умножение";

  @override
  num result() => x * y;
}

class Division extends Math<num> {
  num x;
  num y;

  Division(this.x, this.y);

  @override
  String get name => "Деление";

  @override

  num result() {
    if (y == 0) { throw Exception("Деление на 0 запрещено");};
    return x/y;
  }
}

class Comparison extends Math<String> {
  num x;
  num y;

  Comparison(this.x, this.y);

  @override
  String get name => "Сравнение";

  @override
  String result() => x > y ? "x больше y" : "y больше x";
}

void main () {
  stdout.write('Введите значение x:');
  var xInput = stdin.readLineSync();

  stdout.write('Введите значение y:');
  var yInput = stdin.readLineSync();

  num? x = num.tryParse(xInput ?? '');
  num? y = num.tryParse(yInput ?? '');

  if (x != null && y != null) {
    List<Math> operations = [
      Sum(x, y),
      Subtraction(x, y),
      Multiplication(x, y),
      Division(x, y),
      Comparison(x, y),
    ];

    for (var operation in operations) {
      try {
        var value = operation.result();
        String names = operation.name;
        print('$names : $value');
      } catch (e) {
        String names = operation.name;
        print('$names : Ошибка - $e');
      }
    }
  } else {
    print("Ошибка: введены некорректные числа!");
  }
}
