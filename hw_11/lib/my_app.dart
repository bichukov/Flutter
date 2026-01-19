import 'package:hw_11/pages/first_pages.dart';
import 'package:hw_11/pages/second_pages.dart';
import 'package:hw_11/pages/third_pages.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return switch (settings.name) {
          '/' => MaterialPageRoute(builder: (context) => const FirstPage()),
          '/second' => MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
          '/third' => MaterialPageRoute(
            builder: (context) => const ThirdPage(),
          ),
          _ => null,
        };
      },
    );
  }
}
