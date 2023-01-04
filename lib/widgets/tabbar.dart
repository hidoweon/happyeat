import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'store.dart';

class TabBars extends StatefulWidget {
  const TabBars({Key? key}) : super(key: key);

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                height: 250,
                child: Image.asset('assets/food.png', fit: BoxFit.fill),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Flexible(
                            child: Container(
                              width: 200,
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    width: 200,
                                    child: Text('연남어부',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40),
                                        textAlign: TextAlign.left),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        child: Text('마지막 업데이트',
                                            textAlign: TextAlign.left),
                                        padding:
                                        EdgeInsets.only(left: 10, right: 8),
                                      ),
                                      Container(
                                        child: Text('4시간전'),
                                        padding: EdgeInsets.only(right: 8),
                                      ),
                                      Container(
                                          child: InkWell(
                                            child: Icon(Icons.refresh),
                                            onTap: () {},
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    '영업 중',
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.red),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 200,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                    child: Text(
                                      "사장님의 한 마디",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25,
                                          color: Colors.blueAccent),
                                    )),
                                Flexible(
                                    child: Container(
                                      child: Text('2022/12/29'),
                                      alignment: Alignment.centerRight,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Text('하고 싶은 말 여기 하세요'),
                            )
                          ],
                        ),
                      ),
                    ) //사장님의 한 마디 + 날자 수정
                  ],
                ),
              ), //이름
              TabBar(
                padding: EdgeInsets.all(8),
                controller: _tabController,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey
                ),
                tabs: [
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: Colors.blueAccent)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('menu'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: Colors.blueAccent)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('menu'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(width: 1, color: Colors.blueAccent)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('menu'),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Store(),
                    Text('ddsd'),
                    Text('ddsd'),
                  ],
                ),height: 800,
              )

            ],
          ),
        )
    );
  }
}
