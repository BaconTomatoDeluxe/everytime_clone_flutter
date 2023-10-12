import 'package:everytime_clone/widgets/listpage/post_preview.dart';
import 'package:flutter/material.dart';

import '../common/block_frame.dart';

class InfinityScrollProvider extends ChangeNotifier {
  List<Widget> items = [
    const BlockFrame(
      child: Row(
        children: [
          Text(
            '안내',
            style: TextStyle(color: Colors.red, fontSize: 13),
          ),
          SizedBox(width: 8),
          Text(
            '공감 10개를 받으면 HOT 게시물로 자동 선정됩니다.',
            style: TextStyle(color: Colors.grey, fontSize: 13),
          )
        ],
      ),
    ),
  ];
  int currentIndex = 1;
  bool isMore = false;

  Future<void> started() async {
    for (int i = 1; i < 21; i++) {
      items.add(PostPreview());
    }
    currentIndex = 21;
  }

  Future<void> _addItem() async {
    if (!isMore) {
      isMore = true;
      notifyListeners();
      Future.delayed(const Duration(milliseconds: 1000), () {
        for (int i = 0; i < 20; i++) {
          items.add(PostPreview());
        }
        currentIndex += 20;
        isMore = false;
        notifyListeners();
      });
    }
  }

  void listner(ScrollUpdateNotification notification) {
    if (notification.metrics.maxScrollExtent * 0.88 <
        notification.metrics.pixels) {
      _addItem();
    }
  }
}
