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
                            SizedBox(child: value.items[index]),
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
                      })));
        }));
  }
}

// 애초에 무한 스크롤 패키지가 있다고 하네요
