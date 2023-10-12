import 'package:everytime_clone/screens/hotpost.dart';
import 'package:flutter/material.dart';

class ListBox extends StatelessWidget {
  final String title;

  const ListBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HotPost()));},
          child: Row(
            children: [
              const Icon(Icons.push_pin_outlined, size: 20, color: Colors.white),
              const SizedBox(width: 20),
              Text(
                title,
                textAlign: TextAlign.start,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ));
  }
}
