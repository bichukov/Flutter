import 'package:flutter/material.dart';

class UserDateItem extends StatelessWidget {
  final String data;
  final String title;

  const UserDateItem({required this.data, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            data,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}
