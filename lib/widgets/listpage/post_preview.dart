import 'package:everytime_clone/widgets/common/thumbcomment.dart';
import 'package:flutter/material.dart';

class PostPreview extends StatelessWidget {
  const PostPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            children: [
              //게시판명, 글제목, 글 내용
              Text('자유게시판', style: TextStyle(color: Colors.blueAccent, fontSize: 15, fontWeight: FontWeight.bold),),
              Text('학년이 높아질 수록', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
              Text('data')
              Row(
                children: [
                  ThumbComment(),
                  Text('| 07:31 | 익명', style: TextStyle(color: Colors.white.withOpacity(0.3), fontSize: 13),),
                ],
              )
            ],
          )
        ],
      ),
    )
  }
}
