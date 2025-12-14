import 'dart:async';

class Counter {
int _count = 0;
final _controller = StreamController<int>();

Stream<int> get stream => _controller.stream;

void increment() {
_count++;
_controller.add(_count);
}

void decrement() {
_count--;
if (_count < 0) {
_controller.addError('Отрицательное значение!');
_controller.close();
} else {
_controller.add(_count);
}
}
}

void main() {
var counter = Counter();

counter.stream.listen(
(value) => print('Счетчик: $value'),
onError: (e) => print('Ошибка: $e'),
onDone: () => print('Поток закрыт'),
);

counter.increment();
counter.increment();
counter.decrement();
counter.decrement();
counter.decrement();
}
