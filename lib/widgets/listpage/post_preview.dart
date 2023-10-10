import 'package:everytime_clone/widgets/common/thumbcomment.dart';
import 'package:flutter/material.dart';

class PostPreview extends StatelessWidget {
  const PostPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //게시판명, 글제목, 글 내용 받아와야함
                Text(
                  '자유게시판',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '학년이 높아질 수록',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Text('공부를 열심히하기는커녕 덜하고도 마음만 편해지는듯',
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Row(
                  children: [
                    ThumbComment(),
                    Text(
                      '| 07:31 | 익명',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.3), fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 1,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3)),
          )
        ],
      ),
    );
  }
}
