import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(title: Text('Элемент 1')),
                  ListTile(title: Text('Элемент 2')),
                  ListTile(title: Text('Элемент 3')),
                  ListTile(title: Text('Элемент 4')),
                  ListTile(title: Text('Элемент 5')),
                  ListTile(title: Text('Элемент 6')),
                  ListTile(title: Text('Элемент 7')),
                  ListTile(title: Text('Элемент 8')),
                  ListTile(title: Text('Элемент 9')),
                  ListTile(title: Text('Элемент 10')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('На главную'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
