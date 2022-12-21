import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Advertisement extends StatefulWidget {
  const Advertisement({Key? key}) : super(key: key);

  @override
  State<Advertisement> createState() => _AdvertisementState();
}

class _AdvertisementState extends State<Advertisement> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if(currentPage == 4 ) {
        currentPage = 0;
      }
      _pageController.animateToPage(currentPage, duration: Duration(seconds: 1), curve: Curves.easeIn);
    });
    currentPage++;
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: 5,
      onPageChanged: (index) {
      },
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.amberAccent
          ),
        );
      },
    );
  }
}
