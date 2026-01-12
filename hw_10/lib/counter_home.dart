import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SafeArea(
        top: false,

        child: Column(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: height * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -50,
                      child: Align(
                        alignment:Alignment.center,
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
                    // widget (
                    //     children:CircleAvatar(),
                    // )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
