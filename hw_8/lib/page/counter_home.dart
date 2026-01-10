import 'package:flutter/material.dart';
import 'package:hw_8/widget/user_date_item.dart';
import 'package:hw_8/page/counter_home_second.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;

            return ListView(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: height * 0.15,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: maxWidth > 500 ? -40 : -60,
                      child: Align(
                        alignment: maxWidth > 500
                            ? Alignment.centerLeft
                            : Alignment.center,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(width: 4, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Align(
                    alignment: maxWidth > 500
                        ? Alignment.centerLeft
                        : Alignment.center,
                    child: const Text(
                      'Иванов Иван',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Align(
                    alignment: maxWidth > 500
                        ? Alignment.centerLeft
                        : Alignment.center,
                    child: Text(
                      'Flutter разработчик',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserDateItem(
                      data: '12.5K',
                      title: 'Подписчиков',
                    ),
                    UserDateItem(
                      data: '356',
                      title: 'Подписки',
                    ),
                    UserDateItem(
                      data: '43',
                      title: 'Посты',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: maxWidth > 500 ? 40 : 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text('Редактировать')
                      ),
                      OutlinedButton(
                          onPressed: () {},
                          child: const Text('Поделиться')
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}