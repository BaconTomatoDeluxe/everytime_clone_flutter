import 'package:everytime_clone/widgets/common/block_frame.dart';
import 'package:flutter/material.dart';

class HotPost extends StatelessWidget {
  const HotPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ,
      body: Column(
        children: [
          adbox(),
          const BlockFrame(child: Row(
            children: [
              Text('안내', style: TextStyle(color: Colors.red, fontSize: 13),),
              Text('공감 10개를 받으면 HOT 게시물로 자동 선정됩니다.', style: TextStyle(color: Colors.grey, fontSize: 13),)
            ],
          )),

        ],
      ),
    )
  }
}
