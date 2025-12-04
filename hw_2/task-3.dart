abstract class Vehicle {
  double speed;
  String color;

  Vehicle(this.speed, this.color);

  void drive();

  void stop();

  void checkSpeed(double maxSpeed) {
    if (speed > maxSpeed) {
      print(
        'Превышена максипльно допустимая скорость! Допустима: $maxSpeed км/ч',
      );
    }
  }
}

class Car extends Vehicle {
  bool _engineStatus; // приватный

  Car(double speed, String color, this._engineStatus) : super(speed, color);

  @override
  void drive() {
    if (!_engineStatus) {
      print('Невозможно начать движение: двигатель выключен');
      return;
    }

    print('Автомобиль цвета $color начал движение со скоростью $speed км/ч');
    checkSpeed(120);
  }

  @override
  void stop() {
    speed = 0;
    print('Автомобиль цвета $color остановился');
  }

  void accelerate(double increment) {
    if (!_engineStatus) {
      print('Двигатель выключен — ускорение невозможно');
      return;
    }

    speed += increment;
    print('Автомобиль ускорился до $speed км/ч');
    checkSpeed(120);
  }

  void brake(double decrement) {
    speed -= decrement;
    if (speed < 0) speed = 0;

    print('Автомобиль замедлился до $speed км/ч');
  }
}

class Bicycle extends Vehicle {
  bool engineStatus; // публичный

  Bicycle(double speed, String color, this.engineStatus) : super(speed, color);

  @override
  void drive() {
    if (!engineStatus) {
      print('Велосипед не готов к движению');
      return;
    }

    print('Велосипед цвета $color начал движение со скоростью $speed км/ч');
    checkSpeed(25);
  }

  @override
  void stop() {
    speed = 0;
    print('Велосипед цвета $color остановился');
  }

  void pedalFaster(double increment) {
    if (!engineStatus) {
      print('Невозможно ехать — велосипед не готов');
      return;
    }

    speed += increment;
    print('Велосипед ускорился до $speed км/ч');
    checkSpeed(25);
  }

  void brake(double decrement) {
    speed -= decrement;
    if (speed < 0) speed = 0;

    print('Велосипед замедлился до $speed км/ч');
  }
}
