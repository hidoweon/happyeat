import 'package:flutter/material.dart';

class HomeGrid extends StatefulWidget {
  const HomeGrid({Key? key}) : super(key: key);

  @override
  State<HomeGrid> createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {

  final List<Map<String, dynamic>> gridItems = [
  ];

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
              onTap: (){},
              child: Image.asset('assets/splash.png', fit: BoxFit.cover)),
          color: Colors.green,
        padding: EdgeInsets.all(5),),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
        Container(color: Colors.green),
      ],
    );
  }
}
