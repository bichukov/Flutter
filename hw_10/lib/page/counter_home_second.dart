import 'package:flutter/material.dart';
import 'package:hw_10/page/counter_home_third.dart';

class HomePageSecond extends StatefulWidget {
  const HomePageSecond({super.key});

  @override
  State<HomePageSecond> createState() => _HomePageSecondState();
}

class _HomePageSecondState extends State<HomePageSecond>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final circleSize = 100.0;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Анимация круга'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ThirdPage(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final availableWidth = constraints.maxWidth - circleSize;
            final availableHeight = constraints.maxHeight - circleSize;

            return AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final left = _controller.value * availableWidth;
                final top = _controller.value * availableHeight;

                return Stack(
                  children: [
                    Positioned(
                      left: left,
                      top: top,
                      child: Container(
                        width: circleSize,
                        height: circleSize,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
