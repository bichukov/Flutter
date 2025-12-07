
import 'dart:math';

class UserManager {

  final Map<String, dynamic> userData;

  UserManager(this.userData);

}

class UserValidation {

  validate (Map<String, dynamic> userData) {
    if (userData['name'] == null || userData['name'].isEmpty) {
      throw Exception('Имя пользователя не может быть пустым');
    }
    if (userData['age'] == null || userData['age'] < 0) {
      throw Exception('Возраст пользователя не может быть отрицательным');
    }
  }

}

class UserConversion {

  void conversion (Map<String, dynamic> userData) {
    userData['name'] = userData['name'].toString().toUpperCase();
    userData['age'] = userData['age'] + 1; // Увеличиваем возраст на 1
  }

}

class UserSave {
  void save (Map<String, dynamic> userData) {
    print('Данные сохранены: $userData');
  }
}

class LogInfo {
  void log (String message) {
    print(message);
  }
}

class FullProcessor {
  final UserValidation validation = UserValidation();
  final UserConversion conversion = UserConversion();
  final UserSave save = UserSave();
  final LogInfo info =LogInfo ();

  void processor (Map<String, dynamic> userData) {
    validation.validate(userData);
    conversion.conversion(userData);
    save.save(userData);
    info.log('Данные пользователя успешно обработаны и сохранены');

  }

}


void main() {

  final userData = {'name': 'Alice', 'age': 25};

  final processor = FullProcessor();
  processor.processor(userData);

}
