import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CollectionReference restaurants =
      FirebaseFirestore.instance.collection('restaurant');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: restaurants.snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
              return ListView.builder(
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final DocumentSnapshot documentSnapshot =
                        streamSnapshot.data!.docs[index];
                    return Container(
                        child: Row(children: [
                          Image.network(
                              documentSnapshot['ImageUrl'].toString()),
                          Expanded(
                            child: Column(
                              children: [
                                Text(documentSnapshot['name']),
                                Text(documentSnapshot['kind']),
                              ],
                            ),
                          )
                        ]));
                  });
            }),

    );
  }
}
