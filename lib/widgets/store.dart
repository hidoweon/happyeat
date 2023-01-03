import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  CollectionReference restaurants =
      FirebaseFirestore.instance.collection('restaurant');

  bool _isLiked = false;

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
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                    child: Row(
                      children: [

                        InkWell(
                          onTap: () {}, //put stuff here
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            child: Image.network(
                              documentSnapshot['ImageUrl'].toString(),
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),


                        InkWell(
                          onTap: () {}, //put stuff here
                          child: Container(
                            padding: EdgeInsets.only(left: 8),
                            height: 100,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 8, top: 8),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 230,
                                        child: Text(documentSnapshot['name'],
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        width: 230,
                                        child: Text(
                                          documentSnapshot['kind'],
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15
                                          ),

                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              IconButton(
                                  onPressed: (){
                                    setState(() {
                                      _isLiked = !_isLiked;
                                    });
                                  },
                                  icon: _isLiked? Icon(Icons.favorite) : Icon(Icons.favorite_border))



                            ],
                          ),
                        )
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
