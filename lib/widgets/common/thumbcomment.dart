import 'package:flutter/material.dart';

class ThumbComment extends StatelessWidget {
  const ThumbComment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.thumb_up_outlined,
          color: Colors.red,
          size: 14,
        ),
        Text(
          '38',
          style: TextStyle(color: Colors.red, fontSize: 13),
        ),
        Icon(
          Icons.chat_bubble_outline,
          color: Colors.blue,
          size: 14,
        ),
        Text(
          '11',
          style: TextStyle(color: Colors.blue, fontSize: 13),
        )
      ],
    );
  }
}
