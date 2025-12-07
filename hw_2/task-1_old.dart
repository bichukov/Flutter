class UserManager {
  Map<String, dynamic> userData;

  UserManager(this.userData);

  void update(String key, dynamic value) {
    userData[key] = value;
  }
}

class ValidDateNew {
  void validDate(Map<String, dynamic> data) {
    if (data['name'] == null || data['name'].toString().isEmpty) {
      throw Exception('Имя пользователя не может быть пустым');
    }
    if (data['age'] == null || data['age'] < 0) {
      throw Exception('Возраст пользователя не может быть отрицательным');
    }
  }
}

class ConvertDateNew {
  void convertDate(Map<String, dynamic> data) {
    data['name'] = data['name'].toString().toUpperCase();
    data['age'] = data['age'] + 1; // Увеличиваем возраст на 1
  }
}

class SaveDateNew {
  void saveDate(Map<String, dynamic> data) {
    saveUserData(data);
  }

  void saveUserData(Map<String, dynamic> userData) {
    // Здесь может быть код для сохранения данных в базу данных или файл
    print('Данные сохранены: $userData');
  }
}

void main() {
  final userData = {'name': 'Alice', 'age': 25};

  final validator = ValidDateNew();
  final convertor = ConvertDateNew();
  final save = SaveDateNew();
  final userManager = UserManager(userData);

  validator.validDate(userManager.userData);
  convertor.convertDate(userManager.userData);
  save.saveDate(userManager.userData);
 


  print('Данные пользователя успешно обработаны и сохранены');
}
