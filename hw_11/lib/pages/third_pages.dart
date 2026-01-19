import 'package:flutter/material.dart';

import 'detail_page.dart';

class User {
  final String name;
  final String email;

  User(this.name, this.email);
}

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  _UsersThirdPage createState() => _UsersThirdPage();
}

class _UsersThirdPage extends State<ThirdPage> {
  int _selectedIndex = -1;
  final List<User> _users = [
    User('Алексей', 'alex@example.com'),
    User('Мария', 'maria@example.com'),
    User('Иван', 'ivan@example.com'),
    User('Ольга', 'olga@example.com'),
    User('Дмитрий', 'dmitry@example.com'),
    User('Елена', 'elena@example.com'),
    User('Сергей', 'sergey@example.com'),
    User('Анна', 'anna@example.com'),
    User('Павел', 'pavel@example.com'),
    User('Наталья', 'natalia@example.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: _users.length,
                separatorBuilder: (context, index) =>
                    const Divider(height: 1, thickness: 1, color: Colors.grey),
                itemBuilder: (context, index) {
                  final user = _users[index];
                  return ListTile(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactDetailsPage(user: user),
                        ),
                      );
                    },
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    tileColor: _selectedIndex == index ? Colors.blue[50] : null,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('На главную'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
