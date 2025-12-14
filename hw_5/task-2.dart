import 'dart:async';

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Данные получены');
}

void main() async {
  print('Начало процесса');
  fetchData().then((e) => print(e));
  final StreamController<int> value = StreamController<int>();
  value.stream.listen((data) => print('$data'), onDone: () => 'Поток закрыт');

  int i = 1;

  while (i <= 10) {
    value.add(i);
    i++;
    await Future.delayed(Duration(seconds: 1));
  }
  value.close();
  print('Завершение процесса');
}
