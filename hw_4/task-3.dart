void main() {
  // Создаем список, который может содержать целые числа и значения null
  List<int?> numbers = [1, 2, null, 4, null, 6, 7, null, 9, 10];

  print("Исходный список: $numbers");

  // Используем оператор ??= для замены null на 0
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] ??= 0;
  }

  print("Список после замены null на 0: $numbers");
}