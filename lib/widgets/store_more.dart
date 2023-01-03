import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class StoreMore extends StatefulWidget {
  const StoreMore({Key? key}) : super(key: key);

  @override
  State<StoreMore> createState() => _StoreMoreState();
}

class _StoreMoreState extends State<StoreMore> {
  int _currentSelection = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
                child: Container(
              height: 250,
              child: Image.asset('assets/food.png', fit: BoxFit.fill),
            )),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
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
                unselectedLabelColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellowAccent
                ),
                tabs: [
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.yellowAccent,width: 1)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('메뉴'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.yellowAccent,width: 1)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('매장정보'),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.yellowAccent,width: 1)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('리뷰'),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
