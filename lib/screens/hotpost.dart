import 'package:everytime_clone/widgets/listpage/infinity_scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/common/block_frame.dart';
//참고 https://velog.io/@tygerhwang/FLUTTER-무한-스크롤-만들기

class HotPost extends StatelessWidget {
  const HotPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InfinityScrollProvider>(
        create: (_) => InfinityScrollProvider()..started(),
        child:
            Consumer<InfinityScrollProvider>(builder: (context, value, child) {
          return Scaffold(
              backgroundColor: Colors.black26,
              appBar: AppBar(
                title: Text(
                  'HOT 게시판',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.black26,
              ),
              body: NotificationListener<ScrollUpdateNotification>(
                onNotification: (ScrollUpdateNotification notification) {
                  value.listner(notification);
                  return false;
                },
                child: ListView.builder(
                    itemCount: value.items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          value.items[index],
                          if (value.isMore &&
                              value.currentIndex == index + 1) ...[
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 40),
                              child: CircularProgressIndicator(
                                color: Colors.red,
                              ),
                            )
                          ]
                        ],
                      );
                    }),
              ));
        }));
  }
}

// const BlockFrame(
// child: Row(
// children: [
// Text(
// '안내',
// style: TextStyle(color: Colors.red, fontSize: 13),
// ),
// SizedBox(
// width: 8,
// ),
// Text(
// '공감 10개를 받으면 HOT 게시물로 자동 선정됩니다.',
// style: TextStyle(color: Colors.grey, fontSize: 13),
// )
// ],
// )),