import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Container(
              child: Text("Profile"),
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              color: Colors.black,
              height: 100,
              width: 300,
            )
          ],
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: double.infinity,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: 500,
          color: Colors.red,
          child: Text(
            "관심 목록",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ), //등등 다른 세팅
        )
      ]),
    );
  }
}
