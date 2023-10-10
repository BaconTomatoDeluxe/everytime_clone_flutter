import 'package:everytime_clone/widgets/common/block_frame.dart';
import 'package:everytime_clone/widgets/listpage/post_preview.dart';
import 'package:flutter/material.dart';

class HotPost extends StatelessWidget {
  const HotPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text(
          'HOT 게시판',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const BlockFrame(
                child: Row(
              children: [
                Text(
                  '안내',
                  style: TextStyle(color: Colors.red, fontSize: 13),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '공감 10개를 받으면 HOT 게시물로 자동 선정됩니다.',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                )
              ],
            )),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
            PostPreview(),
          ],
        ),
      ),
    );
  }
}
