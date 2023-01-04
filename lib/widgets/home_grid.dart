import 'package:flutter/material.dart';
import 'package:happyeat/widgets/store.dart';
import 'store_more.dart';
import 'tabbar.dart';

class HomeGrid extends StatefulWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  State<HomeGrid> createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  final List<Map<String, dynamic>> gridItems = [];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      padding: EdgeInsets.all(8),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        Container(
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TabBars()));
                },
                child: Image.asset('assets/한식.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/중식.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/일식.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/양식.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/술집.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/카페.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/신규맛집.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/HOT.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
        Container(
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/추천.png', fit: BoxFit.cover)),
            padding: EdgeInsets.all(2)),
      ],
    );
  }
}
