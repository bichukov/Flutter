import 'package:flutter/material.dart';

void main() {
  runApp(const Pr());
}

class Pr extends StatelessWidget {
  const Pr({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String _buttonText = 'Увеличить счетчик';

  void _incrementCounter() {
    setState(() {
      _counter++;
      _buttonText = 'Вы нажали кнопку!';
    });
    print('Кнопка нажата');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Моё первое приложение')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Привет, Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.purple,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Счетчик: $_counter',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(

                onPressed: () {
                  _incrementCounter();

                },
                child: Text(_buttonText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

