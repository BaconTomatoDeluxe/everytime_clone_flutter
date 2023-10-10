import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(),
        backgroundColor: Colors.black26,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              Text(
                '에브리타임',
                style: TextStyle(color: Colors.red, fontSize: 13),
              ),
              Text(
                '고려대 서울캠',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 23,
            ),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_outline,
              size: 23,
            ),
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Container(
                        height: 150,
                        width: 280,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.3),
                              width: 1,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.lightbulb_outline_rounded, color: Colors.amber, size: 23,),
                              SizedBox(width: 10,),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("우리 학교 인기 메뉴는?", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                                  Text("학식 후기를 확인해 보세요", style: TextStyle(color: Colors.amber, fontSize: 13),)
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Container(
                        height: 150,
                        width: 280,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.3),
                              width: 1,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.lightbulb_outline_rounded, color: Colors.amber, size: 23,),
                              SizedBox(width: 10,),
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("우리 학교 인기 메뉴는?", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                                  Text("학식 후기를 확인해 보세요", style: TextStyle(color: Colors.amber, fontSize: 13),)
                                ],
                              ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
