import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Column(
                  children: [
                    Text(
                      "게시판",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: _index == 0 ? Colors.white : Colors.grey),
                    ),
                    Container(
                        width: 65,
                        height: 2,
                        color: _index == 0
                            ? Colors.white
                            : Colors.grey.withOpacity(0)),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                },
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                child: Column(
                  children: [
                    Text(
                      "진로",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: _index == 1 ? Colors.white : Colors.grey),
                    ),
                    Container(
                        width: 45,
                        height: 2,
                        color: _index == 1
                            ? Colors.white
                            : Colors.grey.withOpacity(0)),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                child: Column(
                  children: [
                    Text(
                      "홍보",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: _index == 2 ? Colors.white : Colors.grey),
                    ),
                    Container(
                        width: 45,
                        height: 2,
                        color: _index == 2
                            ? Colors.white
                            : Colors.grey.withOpacity(0)),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                },
              ),
              const SizedBox(
                width: 15,
              ),
              GestureDetector(
                child: Column(
                  children: [
                    Text(
                      "단체",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: _index == 3 ? Colors.white : Colors.grey),
                    ),
                    Container(
                        width: 45,
                        height: 2,
                        color: _index == 3
                            ? Colors.white
                            : Colors.grey.withOpacity(0)),
                  ],
                ),
                onTap: () {
                  setState(() {
                    _index = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Visibility(
            visible: _index == 0 ? true : false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 250,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.3),
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          listBox("내가 쓴 글"),
                          listBox("댓글 단 글"),
                          listBox("스크랩"),
                          listBox("HOT 게시판"),
                          listBox("BEST 게시판"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 350,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.3),
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          listBox("자유게시판"),
                          listBox("비밀게시판"),
                          listBox("졸업생게시판"),
                          listBox("새내기게시판"),
                          listBox("시사・이슈"),
                          listBox("장터게시판"),
                          listBox("정보게시판"),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Container(
                    height: 200,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.3),
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          listBox("오늘의 학식"),
                          listBox("강의실"),
                          listBox("스터디"),
                          listBox("책방"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget listBox(String title) {
  return Expanded(
      child: GestureDetector(
    onTap: () {},
    child: Row(
      children: [
        Icon(
          Icons.push_pin_outlined,
          size: 20,
          color: Colors.white,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  ));
}
