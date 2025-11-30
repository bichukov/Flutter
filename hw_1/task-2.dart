class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);



void deposit(double amount) {
  if (amount <= 0) {
    print('Ошибка: Сумма пополнения должна быть положительной');
    return;
  }
  _balance += amount;
  print('Успешно пополнено: $amount. Новый баланс: $_balance');
}

void withdraw(double amount) {
  if (amount <= 0) {
    print('Ошибка: Сумма снятия должна быть положительной');
    return;
  }
  if (amount > _balance) {
    print('Ошибка: Недостаточно средств. Текущий баланс: $_balance');
    return;
  }
  _balance -= amount;
  print('Успешно снято: $amount. Новый баланс: $_balance');
}

double getBalance() {
  return _balance;
}

void displayAccountInfo() {
  print('Счет: $_accountNumber, Баланс: $_balance');
}
}