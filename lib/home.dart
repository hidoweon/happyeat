import 'package:flutter/material.dart';
import 'package:happyeat/widgets/advertisement.dart';
import 'widgets/search.dart';
import 'home_grid.dart';
import 'restuarnts.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'store.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [ SliverToBoxAdapter(
          child: Container(
            height: 200,
            child: Advertisement(),
          ),)
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: HomeGrid(),),
            Container(
                child: Store(),
            height: 400,)
        ],)

        // SingleChildScrollView configuration
      ),
    );
  }
}
