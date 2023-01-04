import 'package:flutter/material.dart';
import 'package:happyeat/widgets/advertisement.dart';
import 'widgets/search.dart';
import 'widgets/home_grid.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'widgets/store.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  CollectionReference restaurants = FirebaseFirestore.instance.collection('restaurant');

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            floating: true,
          ),

          SliverToBoxAdapter(
          child: Container(
            height: 200,
            child: Advertisement(),
          ),),

        ];
      },

      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: HomeGrid(),),
              Container(
                height: 120,
                padding: EdgeInsets.only(top: 20, bottom: 5, left: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                    "실시간 식당",
                    style:TextStyle(
                        fontSize: 40,
                    fontWeight: FontWeight.w900)),
              ),
              Container(
                child: Store(),
                height: 500)
            ],)

        // SingleChildScrollView configuration
      ),
    );
  }
}
