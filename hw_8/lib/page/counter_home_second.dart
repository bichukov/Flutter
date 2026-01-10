import 'package:flutter/material.dart';

class HomePageSecond extends StatelessWidget {
  const HomePageSecond({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;
    final isPortrait = height > width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Лента новостей'),
      ),
      body: SafeArea(
        top: false,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isPortrait ? 2 : 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: isPortrait ? 0.58 : 0.9,
          ),
          padding: const EdgeInsets.all(8),
          itemCount: 50,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height:  height * 0.3 ,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Изображение $index',
                            style:  TextStyle(
                              color: Colors.blue[500],
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Заголовок новости $index',
                            style: TextStyle(
                              fontSize: isPortrait ? 12 : 14,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  'Сегодня, ${12 + (index % 12)}:${(index % 60).toString().padLeft(2, '0')}',
                                  style: TextStyle(
                                    fontSize: isPortrait ? 10 : 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}