import 'package:flutter/material.dart';
import 'package:hw_10/page/counter_home_second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation1 = Tween<double>(begin: 200, end: 1).animate(_controller);


    _animation2 = Tween<double>(begin: 1, end: 200).animate(_controller);

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePageSecond(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        top: false,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [

              AnimatedBuilder(
                animation: _animation1,
                builder: (BuildContext context, Widget? child) {
                  return Container(
                    width: _animation1.value,
                    height: _animation1.value,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(1),
                      borderRadius: BorderRadius.circular(_animation1.value / 10),
                      border: Border.all(
                        color: Colors.red.shade900,
                        width: 2,
                      ),
                    ),
                  );
                },
              ),

              AnimatedBuilder(
                animation: _animation2,
                builder: (BuildContext context, Widget? child) {
                  return Container(
                    width: _animation2.value,
                    height: _animation2.value,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(1),
                      borderRadius: BorderRadius.circular(_animation2.value / 10),
                      border: Border.all(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}