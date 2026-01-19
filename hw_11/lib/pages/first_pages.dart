import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Wrap(
            spacing: 16,
            alignment: WrapAlignment.center,

            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('/second'),
                  child: const Text('О программе'),
                ),
              ),

              Expanded(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('/third'),
                  child: const Text('Контакты'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
