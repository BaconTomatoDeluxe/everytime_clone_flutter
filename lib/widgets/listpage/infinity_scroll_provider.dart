import 'package:everytime_clone/widgets/listpage/post_preview.dart';
import 'package:flutter/material.dart';

class InfinityScrollProvider extends ChangeNotifier {
  List<Widget> items = [];
  int currentIndex = 0;
  bool isMore = false;

  Future<void> started() async {
    for (int i = 0; i < 20; i++) {
      items.add(PostPreview());
    }
    currentIndex = 20;
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
