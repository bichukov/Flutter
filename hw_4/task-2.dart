import 'dart:io';

 class OperatorIf {
  final num x;
 const OperatorIf (this.x);

 void ifElse() {
   if (x < 0 ) {
     print('Число $x - положительное');
   } else {
     print('Число $x - отрицательное');
   }

 }
}

class CycleFor {
   void resultFor() {
     for (int i = 1; i <= 10; i++){
       print(i);
     }
   }
}

class OperatorSwitch {
  final int day;

  OperatorSwitch(this.day);

  void checkDay() {
    switch (day) {
      case 1:
        print("Понедельник");
        break;
      case 2:
        print("Вторник");
        break;
      case 3:
        print("Среда");
        break;
      case 4:
        print("Четверг");
        break;
      case 5:
        print("Пятница");
        break;
      case 6:
        print("Суббота");
        break;
      case 7:
        print("Воскресенье");
        break;
      default:
        print("Ошибка: введите число от 1 до 7");
    }
  }
}


void main() {
  stdout.write("Введите число для проверки (if/else): ");
  var inputX = stdin.readLineSync();
  num? x = num.tryParse(inputX ?? "");

  if (x != null) {
    var operatorIf = OperatorIf(x);
    operatorIf.ifElse();
  } else {
    print("Некорректный ввод!");
  }

  print("\nЦикл for от 1 до 10:");
  var cycle = CycleFor();
  cycle.resultFor();

  stdout.write("\nВведите номер дня недели (1–7): ");
  var inputDay = stdin.readLineSync();
  int? day = int.tryParse(inputDay ?? "");

  if (day != null) {
    var opSwitch = OperatorSwitch(day);
    opSwitch.checkDay();
  } else {
    print("Некорректный ввод!");
  }
}

