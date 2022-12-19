import 'dart:async';
import 'bottom.dart';
import 'package:flutter/material.dart';
import 'map2.dart';
import 'home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //파이어베이스 초기화
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomMenu(
        selectedIndex: selectedIndex,
        onClicked: (index) => setState(() => selectedIndex = index),
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
    );
  }

  List _widgetOptions = [
    Home(),
    Map(),
    Text(
      'Search',
      style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
    ),
  ];
}

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Example Dialog'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }


//
// Firebase를 초기화하려면 새 firebase_options.dart 파일의 구성으로 firebase_core 패키지에서 Firebase.initializeApp을 호출합니다.
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
//
// // ...
//
// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );
